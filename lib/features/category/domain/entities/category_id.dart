import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_id.freezed.dart';
part 'category_id.g.dart';

/// カテゴリ（食費、給料等）の一意 ID。
///
/// デフォルトカテゴリは固定文字列（例: `'food'`, `'salary'`）を ID に使い、
/// ユーザー追加のカスタムカテゴリは UUID を採番する想定。
/// Domain 層では「文字列を内側に持つ ID」とだけ規定し、採番ルールは
/// Infrastructure に委譲する。
@freezed
class CategoryId with _$CategoryId {
  const CategoryId._();

  const factory CategoryId({required String value}) = _CategoryId;

  factory CategoryId.fromJson(Map<String, dynamic> json) =>
      _$CategoryIdFromJson(json);

  @override
  String toString() => value;
}
