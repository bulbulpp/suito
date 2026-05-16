import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_failure.freezed.dart';

/// 取引（Transaction）feature 固有の失敗種別。
///
/// 共通の [Failure] には乗せず、取引操作の文脈に閉じた語彙を持つ。
/// パターンマッチ強制のため sealed。
@freezed
sealed class TransactionFailure with _$TransactionFailure {
  const TransactionFailure._();

  /// 指定 ID の取引が見つからない。
  const factory TransactionFailure.notFound() = TransactionNotFound;

  /// 金額が業務ルール違反（0 円以下、負値、桁あふれ等）。
  const factory TransactionFailure.invalidAmount({String? reason}) =
      TransactionInvalidAmount;

  /// 日付が業務ルール違反（未来すぎる、ありえない過去等）。
  const factory TransactionFailure.invalidDate({String? reason}) =
      TransactionInvalidDate;

  /// 紐づけようとしたカテゴリが存在しない or 種別不一致（支出に収入カテゴリ等）。
  const factory TransactionFailure.invalidCategory({String? reason}) =
      TransactionInvalidCategory;

  /// ローカルストレージ（Hive 等）の読み書き失敗。
  const factory TransactionFailure.storageError({String? message}) =
      TransactionStorageError;

  /// 想定外の例外。バグかライブラリの未知の挙動。
  const factory TransactionFailure.unexpected({String? message}) =
      TransactionUnexpected;
}
