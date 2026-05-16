//! 公開為替／BTC 価格 API からレートのみを取得して Dart へ渡す FFI レイヤ。
//!
//! - **HTTPS の URL のみ**を叩く。
//! - 認証・アカウント情報は送信しない。
//! - レート値はすべて **整数** で返す：
//!     - BTC_JPY: 1 BTC あたりの JPY（円）。
//!     - BTC_USD: 1 BTC あたりの USD **セント数**。
//!     - USD_JPY: 1 USD あたりの JPY（円）。

use anyhow::{Context, Result};
use flutter_rust_bridge::frb;
use serde_json::Value;
use std::time::{Duration, SystemTime, UNIX_EPOCH};

/// Dart 側の Domain `ExchangeRate` に対応させやすいフラット構造体。
///
/// - [pair_key]: `BTC_JPY` / `BTC_USD` / `USD_JPY`。
/// - [rate]: 「from の 1 major 単位」を「to の minor 単位で何個」に換算する値。
#[derive(Clone, Debug)]
#[frb(non_opaque)]
pub struct FetchedExchangeRate {
    pub pair_key: String,
    pub rate: i64,
    pub fetched_at_millis_since_epoch_utc: i64,
    pub source: Option<String>,
}

/// すべての標準ペア（BTC/JPY・BTC/USD cents・USD/JPY）を一括で取得する。
///
/// HTTP 処理はすべてここ経由でのみ実行され、Dart 側はこの関数を単に呼ぶ。
#[frb]
pub async fn fetch_exchange_rates_from_network() -> Result<Vec<FetchedExchangeRate>> {
    let client = build_http_client()?;

    let (btc_jpy, btc_jpy_src) = fetch_btc_jpy(&client).await?;
    let (btc_usd_cents, btc_usd_src) = fetch_btc_usd(&client).await?;
    let (usd_jpy_yen, usd_jpy_src) = fetch_usd_jpy(&client).await?;

    let millis = utc_now_millis_i64();

    Ok(vec![
        FetchedExchangeRate {
            pair_key: "BTC_JPY".to_string(),
            rate: btc_jpy,
            fetched_at_millis_since_epoch_utc: millis,
            source: Some(btc_jpy_src),
        },
        FetchedExchangeRate {
            pair_key: "BTC_USD".to_string(),
            rate: btc_usd_cents,
            fetched_at_millis_since_epoch_utc: millis,
            source: Some(btc_usd_src),
        },
        FetchedExchangeRate {
            pair_key: "USD_JPY".to_string(),
            rate: usd_jpy_yen,
            fetched_at_millis_since_epoch_utc: millis,
            source: Some(usd_jpy_src),
        },
    ])
}

fn build_http_client() -> Result<reqwest::Client> {
    reqwest::Client::builder()
        .timeout(Duration::from_secs(5))
        .user_agent(concat!(
            "suito/",
            env!("CARGO_PKG_VERSION"),
            " (+https://github.com/bulbulpp/suito)"
        ))
        .build()
        .context("failed to build reqwest Client")
}

fn utc_now_millis_i64() -> i64 {
    SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .unwrap_or(Duration::ZERO)
        .as_millis()
        .try_into()
        .unwrap_or(i64::MAX)
}

async fn retrying_get_json(
    client: &reqwest::Client,
    provider: &'static str,
    url: &'static str,
) -> Result<Value> {
    let mut backoff_ms = 150_u64;
    let mut last_err = anyhow::anyhow!("retrying_get_json({provider}) had no attempts");
    for attempt in 0..3 {
        match get_json_once(client, url).await {
            Ok(v) => return Ok(v),
            Err(e) => {
                last_err = anyhow::Error::msg(format!(
                    "attempt {} on {}, url {url}: {e:#}",
                    attempt + 1,
                    provider
                ));
                if attempt < 2 {
                    tokio::time::sleep(Duration::from_millis(backoff_ms)).await;
                    backoff_ms = backoff_ms.saturating_mul(2);
                }
            }
        }
    }
    Err(last_err)
}

async fn get_json_once(client: &reqwest::Client, url: &str) -> Result<Value> {
    let resp = client
        .get(url)
        .send()
        .await
        .with_context(|| format!("GET failed: {url}"))?;
    let status = resp.status();
    if status.as_u16() == 429 {
        anyhow::bail!("HTTP {status}");
    }
    let resp = resp
        .error_for_status()
        .with_context(|| format!("non-success HTTP {} for GET {url}", status.as_u16()))?;
    let v: Value = resp
        .json()
        .await
        .with_context(|| format!("JSON decode failed: {url}"))?;
    Ok(v)
}

fn json_to_positive_f64(v: &Value) -> Option<f64> {
    match v {
        Value::Number(n) => {
            let f = n.as_f64()?;
            (f > 0.0).then_some(f)
        }
        Value::String(s) => {
            let f: f64 = s.parse().ok()?;
            (f > 0.0).then_some(f)
        }
        _ => None,
    }
}

fn btc_jpy_yen_from_ticker(best: &Value) -> Result<i64> {
    for key in ["ltp", "best_ask", "best_bid", "last"] {
        let Some(candidate) = best.get(key).and_then(json_to_positive_f64) else {
            continue;
        };
        #[allow(
            clippy::cast_possible_truncation,
            clippy::cast_sign_loss,
            clippy::cast_precision_loss,
            reason = "公開 ticker は i64 で表現可能な桁であり、Dart int に載せるため丸める"
        )]
        let yen_i64 = candidate.round() as i64;
        anyhow::ensure!(yen_i64 > 0, "btc/jpy: non-positive integer for field {key}");
        return Ok(yen_i64);
    }
    anyhow::bail!("btc/jpy: no usable ticker field among ltp/best_*/last")
}

async fn fetch_btc_jpy(client: &reqwest::Client) -> Result<(i64, String)> {
    let bitflyer_url = "https://api.bitflyer.com/v1/getticker?product_code=BTC_JPY";

    match parse_bitflyer_btc_jpy(client, bitflyer_url).await {
        Ok(rate) => Ok((rate, "bitflyer".to_string())),
        Err(bit_err) => match parse_coincheck_btc_jpy(client).await {
            Ok(rate) => Ok((rate, "coincheck".to_string())),
            Err(cc_err) => Err(anyhow::Error::msg(format!(
                "BTC/JPY: all providers failed — bitflyer ({bitflyer_url}) err: {bit_err:#}; coincheck err: {cc_err:#}"
            ))),
        },
    }
}

async fn parse_bitflyer_btc_jpy(client: &reqwest::Client, url: &'static str) -> Result<i64> {
    let v = retrying_get_json(client, "bitflyer-public-ticker-btc-jpy", url).await?;
    btc_jpy_yen_from_ticker(&v)
}

async fn parse_coincheck_btc_jpy(client: &reqwest::Client) -> Result<i64> {
    let url = "https://coincheck.com/api/ticker";
    let v = retrying_get_json(client, "coincheck-public-ticker", url).await?;
    btc_jpy_yen_from_ticker(&v)
}

fn btc_usd_cents_from_dollars_f64(btc_usd: f64) -> Result<i64> {
    anyhow::ensure!(btc_usd > 0.0, "BTC/USD: non-positive USD price");
    let cents = btc_usd * 100.0;
    anyhow::ensure!(cents.is_finite(), "BTC/USD: non-finite cent value");

    #[allow(clippy::cast_possible_truncation, clippy::cast_sign_loss)]
    let cents_rounded_i64 = cents.round() as i64;
    anyhow::ensure!(
        cents_rounded_i64 > 0,
        "BTC/USD: non-positive cents after rounding"
    );
    Ok(cents_rounded_i64)
}

async fn fetch_btc_usd(client: &reqwest::Client) -> Result<(i64, String)> {
    match parse_coinbase_btc_usd(client).await {
        Ok(rate) => Ok((rate, "coinbase".to_string())),
        Err(cb_err) => match parse_kraken_btc_usd(client).await {
            Ok(rate) => Ok((rate, "kraken".to_string())),
            Err(kr_err) => Err(anyhow::Error::msg(format!(
                "BTC/USD: all providers failed — coinbase err: {cb_err:#}; kraken err: {kr_err:#}"
            ))),
        },
    }
}

async fn parse_coinbase_btc_usd(client: &reqwest::Client) -> Result<i64> {
    let url = "https://api.coinbase.com/v2/prices/BTC-USD/spot";
    let v = retrying_get_json(client, "coinbase-spot-price-btc-usd", url).await?;
    let amt = v
        .pointer("/data/amount")
        .and_then(|x| x.as_str())
        .context("Coinbase BTC-USD missing data.amount")?;
    let dollars: f64 = amt
        .parse()
        .context("Coinbase BTC-USD invalid number string")?;
    btc_usd_cents_from_dollars_f64(dollars).context("normalize Coinbase BTC/USD cents")
}

fn kraken_best_btc_usd_dollars(ticker_row: &Value) -> Result<f64> {
    let px = ticker_row
        .get("c")
        .and_then(|x| x.as_array())
        .and_then(|a| a.first())
        .and_then(|x| x.as_str())
        .context("Kraken ticker: missing ticker.c[0] last-trade array")?;

    px.parse::<f64>()
        .context("Kraken ticker: invalid last trade price string")
}

async fn parse_kraken_btc_usd(client: &reqwest::Client) -> Result<i64> {
    let url = "https://api.kraken.com/0/public/Ticker?pair=XBTUSD";
    let v = retrying_get_json(client, "kraken-public-ticker-xbtusd", url).await?;
    let result = v
        .get("result")
        .context("Kraken ticker: missing top-level result")?;
    let result_obj = result
        .as_object()
        .context("Kraken ticker: expected result map")?;

    let row = result_obj
        .values()
        .find(|candidate| candidate.get("c").is_some())
        .context("Kraken ticker: could not locate ticker row containing 'c'")?;

    let dollars = kraken_best_btc_usd_dollars(row)?;
    btc_usd_cents_from_dollars_f64(dollars).context("normalize Kraken BTC/USD cents")
}

fn usd_jpy_yen_rate_from_rates_map(rates: &Value, provider_hint: &'static str) -> Result<i64> {
    let jpy_rate = rates
        .pointer("/rates/JPY")
        .context(format!("{provider_hint}: missing rates.JPY"))?;
    let f = json_to_positive_f64(jpy_rate).context(format!("{provider_hint}: invalid JPY rate"))?;

    #[allow(
        clippy::cast_possible_truncation,
        clippy::cast_sign_loss,
        clippy::cast_precision_loss,
        reason = "USD/JPY は整数円単位までで十分であり、Dart 側 int と整合させるために丸める"
    )]
    let yen_per_usd_i64 = f.round() as i64;
    anyhow::ensure!(
        yen_per_usd_i64 > 0,
        "{provider_hint}: non-positive yen-per-USD integer"
    );
    Ok(yen_per_usd_i64)
}

async fn fetch_usd_jpy(client: &reqwest::Client) -> Result<(i64, String)> {
    match parse_frankfurter_usd_jpy(client).await {
        Ok(rate) => Ok((rate, "frankfurter".to_string())),
        Err(ff_err) => match parse_open_er_usd_jpy(client).await {
            Ok(rate) => Ok((rate, "open_er_api".to_string())),
            Err(open_err) => Err(anyhow::Error::msg(format!(
                "USD/JPY: all providers failed — frankfurter err: {ff_err:#}; open.er-api err: {open_err:#}"
            ))),
        },
    }
}

async fn parse_frankfurter_usd_jpy(client: &reqwest::Client) -> Result<i64> {
    let url = "https://api.frankfurter.app/latest?from=USD&to=JPY";
    let v = retrying_get_json(client, "frankfurter-latest-usdjpy", url).await?;
    usd_jpy_yen_rate_from_rates_map(&v, "frankfurter")
}

async fn parse_open_er_usd_jpy(client: &reqwest::Client) -> Result<i64> {
    let url = "https://open.er-api.com/v6/latest/USD";
    let v = retrying_get_json(client, "open-er-api-latest-from-usd", url).await?;
    usd_jpy_yen_rate_from_rates_map(&v, "open.er-api")
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn btc_jpy_parses_string_ltp() {
        let v: Value = serde_json::json!({ "ltp": "8412345" });
        assert_eq!(btc_jpy_yen_from_ticker(&v).unwrap(), 8412345);
    }

    #[test]
    fn coinbase_amt_maps_to_positive_cents() {
        let v: Value = serde_json::json!({ "data": { "amount": "97123.45" } });
        let amt = v
            .pointer("/data/amount")
            .unwrap()
            .as_str()
            .unwrap()
            .parse::<f64>()
            .unwrap();
        let cents = btc_usd_cents_from_dollars_f64(amt).unwrap();
        assert_eq!(cents, 9_712_345);
    }

    #[test]
    fn kraken_xxbt_row_parses() {
        let v: Value = serde_json::json!({
          "result": {
            "XXBTZUSD": {
              "c": ["96234.56000","0"]
            }
          }
        });
        let result = v.get("result").unwrap().as_object().unwrap();
        let row = result.values().next().unwrap();
        let px = kraken_best_btc_usd_dollars(row).unwrap();
        let cents = btc_usd_cents_from_dollars_f64(px).unwrap();
        assert!(cents > 0);
    }

    #[test]
    fn usd_jpy_number_rate() {
        let v: Value = serde_json::json!({"rates":{"JPY":154.873}});
        assert_eq!(usd_jpy_yen_rate_from_rates_map(&v, "fixture").unwrap(), 155);
    }
}
