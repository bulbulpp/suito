import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_id.dart';
import 'category_kind.dart';

part 'category.freezed.dart';
part 'category.g.dart';

/// カテゴリ（食費、給料、交通費 等）の Entity。
///
/// - [id]: 一意 ID。デフォルトは固定 ID、カスタムは UUID。
/// - [name]: 表示名。ローカライズ対象（MVP では日本語ベタ書き、Presentation 層で
///   `AppLocalizations` ルックアップに置き換える設計余地を残す）。
/// - [icon]: 絵文字 1 文字を想定（FEATURES.md 2.2 の絵文字仕様）。
/// - [colorHex]: 表示色のヒント（`#RRGGBB`）。白黒テーマでも将来配色用に保持。
/// - [kind]: 収入カテゴリか支出カテゴリか。
/// - [isCustom]: ユーザーが作成したカテゴリか。デフォルトは false。
/// - [isHidden]: 一覧から非表示にするフラグ。デフォルトカテゴリは「削除」できず
///   「非表示」にできる仕様（FEATURES.md 2.2）。
/// - [sortOrder]: 並び順。小さいほど上に表示。
@freezed
class Category with _$Category {
  const Category._();

  const factory Category({
    required CategoryId id,
    required String name,
    required String icon,
    required String colorHex,
    required CategoryKind kind,
    required bool isCustom,
    required bool isHidden,
    required int sortOrder,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
