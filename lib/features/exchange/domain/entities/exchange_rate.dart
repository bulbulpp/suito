import 'package:freezed_annotation/freezed_annotation.dart';

import 'rate_pair.dart';

part 'exchange_rate.freezed.dart';
part 'exchange_rate.g.dart';

/// 1 件の為替レート（取得時点のスナップショット）。
///
/// - [pair]: 通貨ペア（BTC_JPY / BTC_USD / USD_JPY）。
/// - [rate]: レート値。**最小単位の整数**で持つ。
///   定義: 「from の 1 major 単位」 = 「rate 個の to の minor 単位」。
///   例:
///     - BTC_JPY: 1 BTC = `rate` 円（JPY の minor = 円）。
///     - BTC_USD: 1 BTC = `rate` cents（USD の minor = cent）。
///     - USD_JPY: 1 USD = `rate` 円。
/// - [fetchedAt]: このレートを取得した時刻（UTC 想定）。
///   キャッシュ判定（60 秒キャッシュ）に使う。
/// - [source]: レート提供元の識別子（"coingecko" 等）。
///   複数プロバイダのフェイルオーバ追跡に使う。null = 不明。
///
/// 浮動小数を使わないのは、家計簿としての累積誤差を避けるため。
/// 表示時に小数表示が必要なら Presentation 層で整形する。
@freezed
abstract class ExchangeRate with _$ExchangeRate {
  const ExchangeRate._();

  const factory ExchangeRate({
    required RatePair pair,
    required int rate,
    required DateTime fetchedAt,
    String? source,
  }) = _ExchangeRate;

  factory ExchangeRate.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRateFromJson(json);

  /// 取得から `cacheTtl` 以上経過していれば「期限切れ」扱い。
  ///
  /// MVP のデフォルト TTL は 60 秒（FEATURES.md 2.4 参照）。
  bool isStaleAt(DateTime now, {Duration cacheTtl = const Duration(seconds: 60)}) {
    return now.difference(fetchedAt) >= cacheTtl;
  }
}
