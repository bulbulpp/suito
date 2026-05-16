import 'package:hive_ce/hive.dart';

import '../models/transaction_hive_model.dart';

/// transaction を Hive に保存する DataSource の契約。
///
/// Repository 実装（`TransactionRepositoryImpl`）からのみ使う想定。
/// 例外はそのまま投げる（Repository 側で `Either<Failure, T>` の Left に
/// 変換する責務）。
///
/// Box のオープン・暗号化鍵のセットアップは **このクラスの責務ではない**。
/// 既にオープンされた `Box<TransactionHiveModel>` を constructor 注入で受け取る。
/// （Hive 初期化は `main.dart` / 統合フェーズで一括して行う）
abstract interface class TransactionLocalDataSource {
  /// Hive の Box 名（main.dart 側でオープンするときに使う）。
  static const String boxName = 'transactions_box';

  /// 指定 ID で永続化（新規・既存の区別なし、upsert）。
  Future<void> put(TransactionHiveModel model);

  /// 指定 ID の取引を 1 件取得。なければ null。
  TransactionHiveModel? getById(String id);

  /// すべての取引を取得（順序保証なし、Repository 側で必要に応じてソート）。
  List<TransactionHiveModel> getAll();

  /// 指定 ID の取引を削除。存在しないキーを渡しても安全（no-op）。
  Future<void> delete(String id);

  /// Box の変更通知ストリーム（追加 / 更新 / 削除）。
  ///
  /// Hive の `Box.watch()` をそのまま返すと UI 層が Hive に依存してしまうので、
  /// `BoxEvent` を「変更後の最新エンティティ（or null = 削除）」だけに薄く整形して
  /// 返す。
  Stream<TransactionHiveModel?> watch();
}

/// Hive を使った [TransactionLocalDataSource] の標準実装。
///
/// テストでは `Box` をモックする代わりに、`MockTransactionLocalDataSource` を
/// 用意して Repository をテストする方が楽（Hive モックは面倒なので）。
class HiveTransactionLocalDataSource implements TransactionLocalDataSource {
  /// 既にオープン済みの `Box<TransactionHiveModel>` を受け取る。
  HiveTransactionLocalDataSource(this._box);

  final Box<TransactionHiveModel> _box;

  @override
  Future<void> put(TransactionHiveModel model) async {
    await _box.put(model.id, model);
  }

  @override
  TransactionHiveModel? getById(String id) => _box.get(id);

  @override
  List<TransactionHiveModel> getAll() => _box.values.toList(growable: false);

  @override
  Future<void> delete(String id) async {
    await _box.delete(id);
  }

  @override
  Stream<TransactionHiveModel?> watch() {
    return _box.watch().map((event) {
      if (event.deleted) return null;
      final value = event.value;
      return value is TransactionHiveModel ? value : null;
    });
  }
}
