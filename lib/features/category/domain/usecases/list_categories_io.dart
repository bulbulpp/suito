import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/category.dart';
import '../entities/category_kind.dart';

part 'list_categories_io.freezed.dart';
part 'list_categories_io.g.dart';

/// `ListCategoriesUseCase` の入力。
@freezed
class ListCategoriesParams with _$ListCategoriesParams {
  const factory ListCategoriesParams({
    CategoryKind? kind,
    @Default(false) bool includeHidden,
  }) = _ListCategoriesParams;

  factory ListCategoriesParams.fromJson(Map<String, dynamic> json) =>
      _$ListCategoriesParamsFromJson(json);
}

/// `ListCategoriesUseCase` の成功時の出力。
@freezed
class ListCategoriesResult with _$ListCategoriesResult {
  const factory ListCategoriesResult({
    required List<Category> items,
  }) = _ListCategoriesResult;

  factory ListCategoriesResult.fromJson(Map<String, dynamic> json) =>
      _$ListCategoriesResultFromJson(json);
}
