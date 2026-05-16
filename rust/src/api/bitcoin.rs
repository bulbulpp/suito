//! Bitcoin 支払いスナップショット用 FFI。
//!
//! sat 量と **この呼び出し内で取り直した** 公開レートから、Hive 保存用の
//! フラットなスナップショットを組み立てる。HTTP は [super::exchange] に委譲する。

use anyhow::{Context, Result};
use flutter_rust_bridge::frb;

use super::exchange::{fetch_exchange_rates_from_network, FetchedExchangeRate};

/// Dart `BitcoinRecordSnapshot` に対応するフラット型。
#[derive(Clone, Debug)]
#[frb(non_opaque)]
pub struct BuiltBitcoinRecordSnapshot {
    pub sat_amount: i64,
    pub jpy_at_record_time: i64,
    pub usd_cents_at_record_time: i64,
    pub btc_jpy_rate: i64,
    pub btc_usd_cent_rate: i64,
    pub recorded_at_millis_since_epoch_utc: i64,
}

const SATOSHI_PER_BTC: i128 = 100_000_000;
const SATOSHI_PER_BTC_I64: i64 = 100_000_000;
const MAX_SAT_SUPPLY: i64 = 21_000_000i64.saturating_mul(SATOSHI_PER_BTC_I64);

/// `sat_amount` とネットワークから取ったレートでスナップショットを組み立てる。
#[frb]
pub async fn build_bitcoin_record_snapshot_from_sat(
    sat_amount: i64,
) -> Result<BuiltBitcoinRecordSnapshot> {
    validate_sat_amount(sat_amount)?;

    let rows = fetch_exchange_rates_from_network()
        .await
        .context("fetch_exchange_rates_from_network")?;

    let btc_jpy = find_pair_rate(&rows, "BTC_JPY").context("missing BTC_JPY rate")?;
    let btc_usd_cents = find_pair_rate(&rows, "BTC_USD").context("missing BTC_USD rate")?;

    let recorded_at = rows
        .first()
        .map(|r| r.fetched_at_millis_since_epoch_utc)
        .context("empty exchange rate rows")?;

    let jpy = sat_to_jpy(sat_amount, btc_jpy).context("jpy conversion")?;
    let usd_cents = sat_to_usd_cents(sat_amount, btc_usd_cents).context("usd conversion")?;

    anyhow::ensure!(jpy >= 0, "jpy negative after conversion");
    anyhow::ensure!(usd_cents >= 0, "usd cents negative after conversion");

    Ok(BuiltBitcoinRecordSnapshot {
        sat_amount,
        jpy_at_record_time: jpy,
        usd_cents_at_record_time: usd_cents,
        btc_jpy_rate: btc_jpy,
        btc_usd_cent_rate: btc_usd_cents,
        recorded_at_millis_since_epoch_utc: recorded_at,
    })
}

fn validate_sat_amount(sat: i64) -> Result<()> {
    if sat <= 0 {
        anyhow::bail!("invalid_sat_amount: must be positive");
    }
    if sat > MAX_SAT_SUPPLY {
        anyhow::bail!("invalid_sat_amount: exceeds 21M BTC supply");
    }
    Ok(())
}

fn find_pair_rate(rows: &[FetchedExchangeRate], key: &str) -> Result<i64> {
    for r in rows {
        if r.pair_key == key {
            anyhow::ensure!(r.rate > 0, "non-positive rate for {key}");
            return Ok(r.rate);
        }
    }
    anyhow::bail!("rate pair not found: {key}");
}

/// sat → JPY（正の金額のみ、四捨五入）。1 BTC = `btc_jpy_per_btc` 円。
fn sat_to_jpy(sat: i64, btc_jpy_per_btc: i64) -> Result<i64> {
    let num = i128::from(sat) * i128::from(btc_jpy_per_btc);
    let rounded = rounded_div_positive(num, SATOSHI_PER_BTC)?;
    i64::try_from(rounded).context("jpy out of i64 range")
}

/// sat → USD cents（正の金額のみ、四捨五入）。1 BTC = `btc_usd_cents_per_btc` cents。
fn sat_to_usd_cents(sat: i64, btc_usd_cents_per_btc: i64) -> Result<i64> {
    let num = i128::from(sat) * i128::from(btc_usd_cents_per_btc);
    let rounded = rounded_div_positive(num, SATOSHI_PER_BTC)?;
    i64::try_from(rounded).context("usd cents out of i64 range")
}

fn rounded_div_positive(numerator: i128, denominator: i128) -> Result<i128> {
    anyhow::ensure!(denominator > 0, "division by non-positive denominator");
    let half = denominator / 2;
    Ok((numerator + half) / denominator)
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn sat_to_jpy_half_btc() {
        assert_eq!(sat_to_jpy(50_000_000, 10_000_000).unwrap(), 5_000_000);
    }

    #[test]
    fn sat_to_usd_one_sat() {
        let cents_per_btc = 900_000_000i64;
        assert_eq!(
            sat_to_usd_cents(100_000_000, cents_per_btc).unwrap(),
            cents_per_btc
        );
        assert_eq!(sat_to_usd_cents(1, cents_per_btc).unwrap(), 9);
    }

    #[test]
    fn validate_sat_rejects_zero() {
        assert!(validate_sat_amount(0).is_err());
    }

    #[test]
    fn validate_sat_rejects_over_supply() {
        assert!(validate_sat_amount(MAX_SAT_SUPPLY + 1).is_err());
    }
}
