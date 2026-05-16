import '../../../../core/common/value_objects/currency.dart';

/// 為替レートの「通貨ペア」を表す enum。
///
/// 表記は `from → to` の方向。例:
/// - [btcJpy]: 1 BTC が何円か（1 BTC = 10,000,000 JPY 等）。
/// - [btcUsd]: 1 BTC が何 USD（cents）か。
/// - [usdJpy]: 1 USD が何円か。
///
/// 「from の 1 単位（最小単位ではなく major 単位）」が「to の最小単位（minor）何個に
/// 相当するか」を整数で表す方針。
/// 例: BTC_JPY = 10_000_000 なら 1 BTC = 10,000,000 円。
///     BTC_USD = 5_000_000 なら 1 BTC = 50,000 USD (= 5,000,000 cents)。
///     USD_JPY = 150 なら 1 USD = 150 円。
///
/// この方針は ExchangeRate.rate のドキュメントとセットで読むこと。
enum RatePair {
  btcJpy,
  btcUsd,
  usdJpy;

  /// レートの「元になる」通貨（「1」の方）。
  ///
  /// 注意: Currency.sat は最小単位なので、`btc*` の場合は便宜上 sat を返さない。
  /// この getter はあくまで「人間が読むときどっち側か」のヒント。
  Currency get fromMajor => switch (this) {
        RatePair.btcJpy => Currency.sat, // BTC を表す通貨は sat
        RatePair.btcUsd => Currency.sat,
        RatePair.usdJpy => Currency.usd,
      };

  /// レートの「変換先」通貨。
  Currency get to => switch (this) {
        RatePair.btcJpy => Currency.jpy,
        RatePair.btcUsd => Currency.usd,
        RatePair.usdJpy => Currency.jpy,
      };

  String get storageKey => switch (this) {
        RatePair.btcJpy => 'BTC_JPY',
        RatePair.btcUsd => 'BTC_USD',
        RatePair.usdJpy => 'USD_JPY',
      };

  static RatePair fromStorageKey(String key) => switch (key) {
        'BTC_JPY' => RatePair.btcJpy,
        'BTC_USD' => RatePair.btcUsd,
        'USD_JPY' => RatePair.usdJpy,
        _ => throw ArgumentError('Unknown RatePair storageKey: $key'),
      };
}
