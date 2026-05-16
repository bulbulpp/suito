import 'package:fpdart/fpdart.dart';

import '../../domain/entities/category.dart';
import '../../domain/entities/category_id.dart';
import '../../domain/entities/category_kind.dart';
import '../../domain/entities/default_categories.dart';
import '../../domain/failures/category_failure.dart';
import '../../domain/repositories/category_repository.dart';
import '../datasources/category_local_datasource.dart';
import '../models/category_hive_model.dart';

/// [CategoryRepository] の Hive ベース実装。
///
/// 責務:
/// - Domain Entity ↔ Hive DTO の変換
/// - 例外を [CategoryFailure] に詰め替え
/// - `cannotDeleteDefault` の判定（`isCustom == false` のカテゴリは削除不可）
/// - デフォルトカテゴリの冪等シード（`seedDefaultsIfNeeded`）
///
/// **非責務（呼び出し側 = UseCase に委ねる）**:
/// - `CategoryFailure.stillReferenced` の判定。これは「紐づく取引が残っているか」
///   を見る必要があり、TransactionRepository への依存が発生する。Repository を
///   feature 横断で結合させたくないため、`DeleteCategoryUseCase` 側で先に
///   TransactionRepository に問い合わせ、必要なら `stillReferenced` を返す。
///   本実装の `delete()` は「Hive から削除する」処理に専念する。
///
/// 重複チェック（`CategoryFailure.duplicate`）も同様に「同名のカテゴリが既に
/// あるか」のビジネスルールとして UseCase で扱う想定（Repository では物理的な
/// `put` の冪等性のみを保証）。
class CategoryRepositoryImpl implements CategoryRepository {
  CategoryRepositoryImpl(this._dataSource);

  final CategoryLocalDataSource _dataSource;

  @override
  Future<Either<CategoryFailure, Category>> create(Category category) async {
    try {
      final model = CategoryHiveModel.fromEntity(category);
      await _dataSource.put(model);
      return Right(category);
    } catch (e) {
      return Left(CategoryFailure.storageError(message: e.toString()));
    }
  }

  @override
  Future<Either<CategoryFailure, Category>> update(Category category) async {
    try {
      final existing = _dataSource.getById(category.id.value);
      if (existing == null) {
        return const Left(CategoryFailure.notFound());
      }
      final model = CategoryHiveModel.fromEntity(category);
      await _dataSource.put(model);
      return Right(category);
    } catch (e) {
      return Left(CategoryFailure.storageError(message: e.toString()));
    }
  }

  @override
  Future<Either<CategoryFailure, Unit>> delete(CategoryId id) async {
    try {
      final existing = _dataSource.getById(id.value);
      if (existing == null) {
        return const Left(CategoryFailure.notFound());
      }
      if (!existing.isCustom) {
        return const Left(CategoryFailure.cannotDeleteDefault());
      }
      await _dataSource.delete(id.value);
      return const Right(unit);
    } catch (e) {
      return Left(CategoryFailure.storageError(message: e.toString()));
    }
  }

  @override
  Future<Either<CategoryFailure, Category>> findById(CategoryId id) async {
    try {
      final model = _dataSource.getById(id.value);
      if (model == null) {
        return const Left(CategoryFailure.notFound());
      }
      return Right(model.toEntity());
    } catch (e) {
      return Left(CategoryFailure.storageError(message: e.toString()));
    }
  }

  @override
  Future<Either<CategoryFailure, List<Category>>> list({
    CategoryKind? kind,
    bool includeHidden = false,
  }) async {
    try {
      final all = _dataSource.getAll().map((m) => m.toEntity()).where((c) {
        if (kind != null && c.kind != kind) return false;
        if (!includeHidden && c.isHidden) return false;
        return true;
      }).toList()
        ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
      return Right(all);
    } catch (e) {
      return Left(CategoryFailure.storageError(message: e.toString()));
    }
  }

  @override
  Future<Either<CategoryFailure, Unit>> seedDefaultsIfNeeded() async {
    try {
      // 冪等性: いずれかのデフォルト ID が既に存在すれば「シード済み」とみなす。
      // ユーザーがデフォルトを「非表示」にしても ID は残るので誤検知しない
      // （仕様上、デフォルトは削除不可で非表示にするだけ）。
      final alreadySeeded =
          DefaultCategories.all.any((c) => _dataSource.containsKey(c.id.value));
      if (alreadySeeded) {
        return const Right(unit);
      }
      final batch = <String, CategoryHiveModel>{
        for (final c in DefaultCategories.all)
          c.id.value: CategoryHiveModel.fromEntity(c),
      };
      await _dataSource.putAll(batch);
      return const Right(unit);
    } catch (e) {
      return Left(CategoryFailure.storageError(message: e.toString()));
    }
  }
}
