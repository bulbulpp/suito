import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/category_id.dart';

part 'delete_category_io.freezed.dart';
part 'delete_category_io.g.dart';

/// `DeleteCategoryUseCase` の入力。
///
/// デフォルトカテゴリは削除不可（非表示にする）。
/// 紐づく取引が残っている場合は失敗を返す（カテゴリだけ消えて取引が
/// 孤児になる事故を防ぐ）。
@freezed
class DeleteCategoryParams with _$DeleteCategoryParams {
  const factory DeleteCategoryParams({
    required CategoryId id,
  }) = _DeleteCategoryParams;

  factory DeleteCategoryParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteCategoryParamsFromJson(json);
}

/// `DeleteCategoryUseCase` の成功時の出力。
@freezed
class DeleteCategoryResult with _$DeleteCategoryResult {
  const factory DeleteCategoryResult({
    required CategoryId deletedId,
  }) = _DeleteCategoryResult;

  factory DeleteCategoryResult.fromJson(Map<String, dynamic> json) =>
      _$DeleteCategoryResultFromJson(json);
}
