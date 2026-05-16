import 'package:fpdart/fpdart.dart';

import '../../../../core/common/usecase.dart';
import '../../domain/failures/category_failure.dart';
import '../../domain/repositories/category_repository.dart';

/// 初回起動時などにデフォルトカテゴリ（`DefaultCategories.all`）を投入するユースケース。
///
/// 冪等: [CategoryRepository.seedDefaultsIfNeeded] に委譲。既に Hive に
/// 任意のデフォルト ID が存在すれば no-op で成功（`Right(unit)`）を返す。
///
/// 投入の具体実装・判定ロジックは Infrastructure 側（`seedDefaultsIfNeeded`）
/// に閉じ、本ユースケースは「その操作を名前付きユースケースとして呼ぶ窓口」だけ
/// を担当する。
class SeedDefaultCategoriesUseCase
    extends UseCase<CategoryFailure, NoParams, Unit> {
  SeedDefaultCategoriesUseCase(this._repository);

  final CategoryRepository _repository;

  @override
  Future<Either<CategoryFailure, Unit>> call(NoParams params) =>
      _repository.seedDefaultsIfNeeded();
}
