import 'package:fpdart/fpdart.dart';

import '../entities/category.dart';
import '../entities/category_id.dart';
import '../entities/category_kind.dart';
import '../failures/category_failure.dart';

/// カテゴリを永続化する Repository の契約。
///
/// 実装は Infrastructure 層。初回起動時に [DefaultCategories.all] を
/// 投入する処理は Infrastructure の責務（Domain は契約のみ）。
abstract interface class CategoryRepository {
  /// カスタムカテゴリを作成して保存する。
  Future<Either<CategoryFailure, Category>> create(Category category);

  /// 既存カテゴリを更新する（名前変更・非表示切替・並び順変更等）。
  Future<Either<CategoryFailure, Category>> update(Category category);

  /// 指定 ID のカテゴリを物理削除する。
  ///
  /// - デフォルトカテゴリ（`isCustom == false`）は削除不可
  ///   → [CategoryFailure.cannotDeleteDefault]
  /// - 紐づく取引が残っている場合 → [CategoryFailure.stillReferenced]
  Future<Either<CategoryFailure, Unit>> delete(CategoryId id);

  /// 指定 ID のカテゴリを 1 件取得する。
  Future<Either<CategoryFailure, Category>> findById(CategoryId id);

  /// 種別フィルタ付きで一覧取得する。
  ///
  /// `kind` を指定すると収入 or 支出のみに絞る。
  /// `includeHidden` が false の場合、`isHidden == true` のカテゴリは除外。
  /// 並び順は `sortOrder` 昇順。
  Future<Either<CategoryFailure, List<Category>>> list({
    CategoryKind? kind,
    bool includeHidden = false,
  });

  /// 初回起動時にデフォルトカテゴリを投入する。
  ///
  /// 既に投入済みの場合は no-op で [Unit] を返す（冪等）。
  /// 投入判定は Infrastructure 層が行う（例: 専用フラグ Box を持つ）。
  Future<Either<CategoryFailure, Unit>> seedDefaultsIfNeeded();
}
