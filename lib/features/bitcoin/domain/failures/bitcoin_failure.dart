import 'package:freezed_annotation/freezed_annotation.dart';

part 'bitcoin_failure.freezed.dart';

/// bitcoin feature 固有の失敗種別。
@freezed
sealed class BitcoinFailure with _$BitcoinFailure {
  const BitcoinFailure._();

  /// sat 量が業務ルール違反（0 以下、最大供給量超え 等）。
  const factory BitcoinFailure.invalidSatAmount({required String reason}) =
      BitcoinInvalidSatAmount;

  /// 記録時にレートが取得できなかった（オフライン、全プロバイダ失敗等）。
  ///
  /// この場合、取引そのものを保存しないことを推奨（後から金額を再計算
  /// できないと家計簿としての一貫性が崩れる）。
  const factory BitcoinFailure.rateUnavailable({String? message}) =
      BitcoinRateUnavailable;

  /// 関連する transaction repository の失敗を中継する。
  const factory BitcoinFailure.transactionSourceError({
    required String message,
  }) = BitcoinTransactionSourceError;

  /// ストレージ層の失敗（直接アクセスする場合）。
  const factory BitcoinFailure.storageError({String? message}) =
      BitcoinStorageError;

  /// 想定外の例外。
  const factory BitcoinFailure.unexpected({String? message}) =
      BitcoinUnexpected;
}
