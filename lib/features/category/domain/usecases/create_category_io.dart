import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/category.dart';
import '../entities/category_kind.dart';

part 'create_category_io.freezed.dart';
part 'create_category_io.g.dart';

/// `CreateCategoryUseCase` の入力。
///
/// id / colorHex / sortOrder は UseCase + Infrastructure 側で補完する設計。
/// UI からは「名前・アイコン・種別」だけ受け取れば足りる。
@freezed
class CreateCategoryParams with _$CreateCategoryParams {
  const factory CreateCategoryParams({
    required String name,
    required String icon,
    required CategoryKind kind,
    String? colorHex,
  }) = _CreateCategoryParams;

  factory CreateCategoryParams.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryParamsFromJson(json);
}

/// `CreateCategoryUseCase` の成功時の出力。
@freezed
class CreateCategoryResult with _$CreateCategoryResult {
  const factory CreateCategoryResult({
    required Category category,
  }) = _CreateCategoryResult;

  factory CreateCategoryResult.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryResultFromJson(json);
}
