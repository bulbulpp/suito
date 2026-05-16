import 'package:fpdart/fpdart.dart';

import '../../../../core/common/usecase.dart';
import '../../../../core/common/value_objects/transaction_id.dart';
import '../../domain/entities/transaction.dart';
import '../../domain/failures/transaction_failure.dart';
import '../../domain/repositories/transaction_repository.dart';
import '../../domain/usecases/create_transaction_io.dart';

/// 取引を 1 件新規作成するユースケース。
///
/// 責務:
/// - 入力 [CreateTransactionParams] のうち、業務ルールに違反するもの
///   （現状は「金額が非正値（0 円以下）」のみ）を入口で弾く
/// - Entity の id / createdAt / updatedAt は Infrastructure 側で採番させるため、
///   仮置きの空 [TransactionId] と現在時刻を入れて [TransactionRepository.create]
///   に渡す（Repository が最終的な値を確定して返す）
/// - 成功時は永続化後の Entity を [CreateTransactionResult] にラップして返す
///
/// **非責務**:
/// - `invalidCategory` 判定 → CategoryRepository への依存を持ち込みたくないため、
///   現時点では行わない。将来必要になったら Application 層で CategoryRepository
///   を constructor 注入して合成する（cross-feature 依存の発生は意図的に Phase 1
///   後半 or Phase 3 へ先送り）。
/// - `invalidDate` 判定 → 過去 / 未来取引は仕様上許可（予定入力など）。
class CreateTransactionUseCase
    extends UseCase<TransactionFailure, CreateTransactionParams,
        CreateTransactionResult> {
  CreateTransactionUseCase(this._repository);

  final TransactionRepository _repository;

  @override
  Future<Either<TransactionFailure, CreateTransactionResult>> call(
    CreateTransactionParams params,
  ) async {
    if (!params.amount.isPositive) {
      return const Left(
        TransactionFailure.invalidAmount(
          reason: 'amount must be positive (got 0 or negative)',
        ),
      );
    }

    final now = DateTime.now().toUtc();
    // id は空文字を渡し、Repository 実装側で UUID 風 ID を採番させる。
    final draft = Transaction(
      id: const TransactionId(value: ''),
      type: params.type,
      amount: params.amount,
      categoryId: params.categoryId,
      occurredAt: params.occurredAt,
      paymentMethod: params.paymentMethod,
      createdAt: now,
      updatedAt: now,
      memo: params.memo,
      bitcoinSnapshot: params.bitcoinSnapshot,
    );

    final result = await _repository.create(draft);
    return result.map((t) => CreateTransactionResult(transaction: t));
  }
}
