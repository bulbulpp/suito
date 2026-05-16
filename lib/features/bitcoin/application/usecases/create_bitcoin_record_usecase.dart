import 'package:fpdart/fpdart.dart';

import '../../../../core/common/usecase.dart';
import '../../../../core/common/value_objects/money.dart';
import '../../../../core/common/value_objects/transaction_id.dart';
import '../../../transaction/domain/entities/payment_method.dart';
import '../../../transaction/domain/entities/transaction.dart';
import '../../../transaction/domain/entities/transaction_type.dart';
import '../../../transaction/domain/failures/transaction_failure.dart';
import '../../../transaction/domain/repositories/transaction_repository.dart';
import '../../domain/failures/bitcoin_failure.dart';
import '../../domain/repositories/bitcoin_repository.dart';
import '../../domain/usecases/create_bitcoin_record_io.dart';

/// Bitcoin 支払いを 1 件として保存するユースケース（支出として記録）。
///
/// - レートスナップショットは [BitcoinRepository.buildSnapshot]（Rust FFI 側で取得）。
/// - 永続化は [TransactionRepository.create]（Hive 等は Infrastructure の責務）。
sealed class CreateBitcoinRecordFailure {}

/// スナップショット作成・sat 検証まわりの失敗。
final class CreateBitcoinRecordFailureBitcoin
    extends CreateBitcoinRecordFailure {
  CreateBitcoinRecordFailureBitcoin(this.value);

  final BitcoinFailure value;
}

/// 取引保存（Repository）側の失敗。
final class CreateBitcoinRecordFailureTransaction
    extends CreateBitcoinRecordFailure {
  CreateBitcoinRecordFailureTransaction(this.value);

  final TransactionFailure value;
}

class CreateBitcoinRecordUseCase
    extends
        UseCase<
          CreateBitcoinRecordFailure,
          CreateBitcoinRecordParams,
          CreateBitcoinRecordResult
        > {
  CreateBitcoinRecordUseCase(
    this._bitcoinRepository,
    this._transactionRepository,
  );

  final BitcoinRepository _bitcoinRepository;
  final TransactionRepository _transactionRepository;

  @override
  Future<Either<CreateBitcoinRecordFailure, CreateBitcoinRecordResult>> call(
    CreateBitcoinRecordParams params,
  ) async {
    final amount = Money.sat(amount: params.satAmount);
    if (!amount.isPositive) {
      return Left(
        CreateBitcoinRecordFailureBitcoin(
          const BitcoinFailure.invalidSatAmount(
            reason: 'sat amount must be positive',
          ),
        ),
      );
    }

    final snapshotEither = await _bitcoinRepository.buildSnapshot(
      satAmount: params.satAmount,
    );

    return snapshotEither.fold<
      Future<Either<CreateBitcoinRecordFailure, CreateBitcoinRecordResult>>
    >((bf) async => Left(CreateBitcoinRecordFailureBitcoin(bf)), (
      snapshot,
    ) async {
      final now = DateTime.now().toUtc();
      final draft = Transaction(
        id: const TransactionId(value: ''),
        type: TransactionType.expense,
        amount: amount,
        categoryId: params.categoryId,
        occurredAt: params.occurredAt,
        paymentMethod: PaymentMethod.bitcoin,
        createdAt: now,
        updatedAt: now,
        memo: params.memo,
        bitcoinSnapshot: snapshot,
      );

      final saved = await _transactionRepository.create(draft);
      return saved.fold(
        (tf) => Left(CreateBitcoinRecordFailureTransaction(tf)),
        (transaction) =>
            Right(CreateBitcoinRecordResult(transaction: transaction)),
      );
    });
  }
}
