import 'package:hive_ce/hive.dart';

import '../models/category_hive_model.dart';

/// category を Hive に保存する DataSource の契約。
///
/// 設計は `transaction_local_datasource.dart` と同じ方針:
/// - 既にオープン済みの `Box<CategoryHiveModel>` を constructor 注入で受け取る
///   （Box の open / 暗号化鍵セットアップは統合フェーズの責務）
/// - 例外はそのまま throw し、Repository 側で `Either<Failure, T>` に詰め替える
abstract interface class CategoryLocalDataSource {
  /// Hive Box 名（main.dart 側でオープンするときに使う）。
  static const String boxName = 'categories_box';

  /// upsert（新規・既存どちらでも保存）。
  Future<void> put(CategoryHiveModel model);

  /// 複数を一括保存。シードや一括インポートに使う。
  Future<void> putAll(Map<String, CategoryHiveModel> models);

  /// 指定 ID のカテゴリを取得。なければ null。
  CategoryHiveModel? getById(String id);

  /// 指定 ID が Box に存在するか（seed 判定など軽量チェック用）。
  bool containsKey(String id);

  /// すべてのカテゴリを取得（順序保証なし、Repository 側で sortOrder で並べる）。
  List<CategoryHiveModel> getAll();

  /// 指定 ID のカテゴリを削除。存在しないキーは no-op。
  Future<void> delete(String id);
}

/// Hive を使った [CategoryLocalDataSource] の標準実装。
class HiveCategoryLocalDataSource implements CategoryLocalDataSource {
  HiveCategoryLocalDataSource(this._box);

  final Box<CategoryHiveModel> _box;

  @override
  Future<void> put(CategoryHiveModel model) async {
    await _box.put(model.id, model);
  }

  @override
  Future<void> putAll(Map<String, CategoryHiveModel> models) async {
    await _box.putAll(models);
  }

  @override
  CategoryHiveModel? getById(String id) => _box.get(id);

  @override
  bool containsKey(String id) => _box.containsKey(id);

  @override
  List<CategoryHiveModel> getAll() => _box.values.toList(growable: false);

  @override
  Future<void> delete(String id) async {
    await _box.delete(id);
  }
}
