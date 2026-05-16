import 'package:fpdart/fpdart.dart';

import '../../../../core/common/usecase.dart';
import '../../domain/failures/transaction_failure.dart';
import '../../domain/repositories/transaction_repository.dart';
import '../../domain/usecases/delete_transaction_io.dart';

/// 指定 ID の取引を削除するユースケース（物理削除）。
///
/// バリデーション無し。存在しない ID が指定されたら Repository が
/// [TransactionFailure.notFound] を返す。
///
/// UI 側で「削除しました」トーストに使うため、戻り値で削除済み ID を返す
/// （[DeleteTransactionResult]）。
class DeleteTransactionUseCase
    extends UseCase<TransactionFailure, DeleteTransactionParams,
        DeleteTransactionResult> {
  DeleteTransactionUseCase(this._repository);

  final TransactionRepository _repository;

  @override
  Future<Either<TransactionFailure, DeleteTransactionResult>> call(
    DeleteTransactionParams params,
  ) async {
    final result = await _repository.delete(params.id);
    return result.map(
      (_) => DeleteTransactionResult(deletedId: params.id),
    );
  }
}
