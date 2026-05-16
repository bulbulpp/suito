import 'package:hive_ce/hive.dart';

import '../../domain/entities/category.dart';
import '../../domain/entities/category_id.dart';
import '../../domain/entities/category_kind.dart';

part 'category_hive_model.g.dart';

/// Hive に永続化する Category DTO。
///
/// `transaction_hive_model.dart` と同じ方針で plain class + `@HiveType` を採用。
/// freezed Entity を直接 `@HiveType` 化しない（hive_ce と freezed の相性問題回避）。
///
/// typeId は feature 横断で固定:
///   transaction=1 / **category=2** / settings=3 / exchange_cache=4 /
///   bitcoin_snapshot=5
///
/// enum (`CategoryKind`) は `storageKey` 文字列で保存し、enum 名のリネームに耐性を持たせる。
@HiveType(typeId: 2)
class CategoryHiveModel extends HiveObject {
  CategoryHiveModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.colorHex,
    required this.kindKey,
    required this.isCustom,
    required this.isHidden,
    required this.sortOrder,
  });

  @HiveField(0)
  String id;

  @HiveField(1)
  String name;

  /// 絵文字 1 文字（FEATURES.md 2.2）。
  @HiveField(2)
  String icon;

  /// `#RRGGBB` 形式。
  @HiveField(3)
  String colorHex;

  /// `CategoryKind.storageKey` の値（'income' / 'expense'）。
  @HiveField(4)
  String kindKey;

  @HiveField(5)
  bool isCustom;

  @HiveField(6)
  bool isHidden;

  @HiveField(7)
  int sortOrder;

  factory CategoryHiveModel.fromEntity(Category c) {
    return CategoryHiveModel(
      id: c.id.value,
      name: c.name,
      icon: c.icon,
      colorHex: c.colorHex,
      kindKey: c.kind.storageKey,
      isCustom: c.isCustom,
      isHidden: c.isHidden,
      sortOrder: c.sortOrder,
    );
  }

  Category toEntity() {
    return Category(
      id: CategoryId(value: id),
      name: name,
      icon: icon,
      colorHex: colorHex,
      kind: CategoryKind.fromStorageKey(kindKey),
      isCustom: isCustom,
      isHidden: isHidden,
      sortOrder: sortOrder,
    );
  }
}
