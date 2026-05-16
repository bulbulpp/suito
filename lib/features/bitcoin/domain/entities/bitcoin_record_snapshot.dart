import 'package:freezed_annotation/freezed_annotation.dart';

part 'bitcoin_record_snapshot.freezed.dart';
part 'bitcoin_record_snapshot.g.dart';

/// Bitcoin 支払いを記録した時点のレートと換算値のスナップショット。
///
/// 取引（Transaction）が `paymentMethod == bitcoin` のとき、この型を
/// Transaction.bitcoinSnapshot に保存する。これにより:
/// - 当時いくら払ったか（sat + 円換算 + USD 換算）を後から正確に振り返れる
/// - レートが将来変わっても過去の表示が揺れない
///
/// すべて **最小単位の整数** で保持する。換算は記録時点で 1 回だけ行い、
/// 結果を不変に固める。
///
/// - [satAmount]: 支払った Bitcoin の量（sat 単位、1 BTC = 1e8 sat）。
/// - [jpyAtRecordTime]: 記録時点の円換算（円整数）。
/// - [usdCentsAtRecordTime]: 記録時点の USD 換算（cents 整数）。
/// - [btcJpyRate]: 記録時点の BTC/JPY レート（1 BTC = `btcJpyRate` 円）。
/// - [btcUsdCentRate]: 記録時点の BTC/USD レート（1 BTC = `btcUsdCentRate` cents）。
/// - [recordedAt]: スナップショットを撮った時刻（UTC 想定）。
@freezed
abstract class BitcoinRecordSnapshot with _$BitcoinRecordSnapshot {
  const BitcoinRecordSnapshot._();

  const factory BitcoinRecordSnapshot({
    required int satAmount,
    required int jpyAtRecordTime,
    required int usdCentsAtRecordTime,
    required int btcJpyRate,
    required int btcUsdCentRate,
    required DateTime recordedAt,
  }) = _BitcoinRecordSnapshot;

  factory BitcoinRecordSnapshot.fromJson(Map<String, dynamic> json) =>
      _$BitcoinRecordSnapshotFromJson(json);

  /// sat 量を BTC 単位（小数）に変換するヘルパ。表示用のみ。
  /// 1 BTC = 100,000,000 sat。
  double get btcAmountForDisplay => satAmount / 100000000.0;
}
