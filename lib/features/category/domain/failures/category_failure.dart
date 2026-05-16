import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_failure.freezed.dart';

/// category feature 固有の失敗種別。
@freezed
sealed class CategoryFailure with _$CategoryFailure {
  const CategoryFailure._();

  /// 指定 ID のカテゴリが見つからない。
  const factory CategoryFailure.notFound() = CategoryNotFound;

  /// 名前が空 / 長すぎ / アイコン未指定 等。
  const factory CategoryFailure.invalidInput({required String reason}) =
      CategoryInvalidInput;

  /// 同名カテゴリが既に存在する（重複防止）。
  const factory CategoryFailure.duplicate({required String name}) =
      CategoryDuplicate;

  /// デフォルトカテゴリを削除しようとした（仕様上禁止：非表示は OK）。
  const factory CategoryFailure.cannotDeleteDefault() =
      CategoryCannotDeleteDefault;

  /// 削除しようとしたカテゴリに紐づく取引が残っている。
  const factory CategoryFailure.stillReferenced({required int transactionCount}) =
      CategoryStillReferenced;

  /// ローカルストレージ（Hive 等）の読み書き失敗。
  const factory CategoryFailure.storageError({String? message}) =
      CategoryStorageError;

  /// 想定外の例外。
  const factory CategoryFailure.unexpected({String? message}) =
      CategoryUnexpected;
}
