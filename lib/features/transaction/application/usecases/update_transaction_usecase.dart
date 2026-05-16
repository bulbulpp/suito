import 'package:fpdart/fpdart.dart';

import '../../../../core/common/usecase.dart';
import '../../domain/failures/transaction_failure.dart';
import '../../domain/repositories/transaction_repository.dart';
import '../../domain/usecases/update_transaction_io.dart';

/// 既存取引を更新するユースケース。
///
/// 部分更新はサポートせず、常に「更新後の Entity 全体」を受け取る契約
/// （`UpdateTransactionParams` 参照）。`updatedAt` は Infrastructure 側で
/// 再採番する責務。
///
/// 入口で `amount.isPositive` のみバリデーション。`invalidCategory` /
/// `invalidDate` は CreateTransactionUseCase と同じ理由で扱わない。
///
/// 対象 ID が存在しない場合は Repository が [TransactionFailure.notFound] を返す。
class UpdateTransactionUseCase
    extends UseCase<TransactionFailure, UpdateTransactionParams,
        UpdateTransactionResult> {
  UpdateTransactionUseCase(this._repository);

  final TransactionRepository _repository;

  @override
  Future<Either<TransactionFailure, UpdateTransactionResult>> call(
    UpdateTransactionParams params,
  ) async {
    if (!params.transaction.amount.isPositive) {
      return const Left(
        TransactionFailure.invalidAmount(
          reason: 'amount must be positive (got 0 or negative)',
        ),
      );
    }

    final result = await _repository.update(params.transaction);
    return result.map((t) => UpdateTransactionResult(transaction: t));
  }
}
