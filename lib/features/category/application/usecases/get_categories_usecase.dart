import 'package:fpdart/fpdart.dart';

import '../../../../core/common/usecase.dart';
import '../../domain/failures/category_failure.dart';
import '../../domain/repositories/category_repository.dart';
import '../../domain/usecases/list_categories_io.dart';

/// カテゴリ一覧を種別フィルタ付きで取得するユースケース。
///
/// [ListCategoriesParams.kind] が null のときは収入・支出両方。
/// [ListCategoriesParams.includeHidden] が false のときは `isHidden == true`
/// は除外される。並び順は Repository 側の `sortOrder` 昇順に従う。
class GetCategoriesUseCase extends UseCase<CategoryFailure, ListCategoriesParams,
    ListCategoriesResult> {
  GetCategoriesUseCase(this._repository);

  final CategoryRepository _repository;

  @override
  Future<Either<CategoryFailure, ListCategoriesResult>> call(
    ListCategoriesParams params,
  ) async {
    final result = await _repository.list(
      kind: params.kind,
      includeHidden: params.includeHidden,
    );
    return result.map((items) => ListCategoriesResult(items: items));
  }
}
