import 'package:fpdart/fpdart.dart';

import '../../../../core/common/usecase.dart';
import '../../domain/failures/transaction_failure.dart';
import '../../domain/repositories/transaction_repository.dart';
import '../../domain/usecases/list_transactions_io.dart';

/// 取引を新しい順（`occurredAt` 降順）に取得するユースケース。
///
/// ダッシュボードの「最近の取引」セクションや、Nostr 同期の全件プッシュ前に
/// 使う想定。期間フィルタは取らず、`limit` だけを参照する。期間絞り込みが
/// 必要な場合は [GetTransactionsByDateRangeUseCase] を使う。
///
/// 共有 [ListTransactionsParams] を入力とするが、本ユースケースが見るのは
/// `limit` フィールドのみ（from / to / type / paymentMethod は無視）。
/// 用途が違うユースケースを同じ Params 型で受けるのは Phase 0 で Params 型を
/// 細分化していないための割り切り。後で必要なら専用の Params 型に分離する。
class GetTransactionsUseCase
    extends UseCase<TransactionFailure, ListTransactionsParams,
        ListTransactionsResult> {
  GetTransactionsUseCase(this._repository);

  final TransactionRepository _repository;

  @override
  Future<Either<TransactionFailure, ListTransactionsResult>> call(
    ListTransactionsParams params,
  ) async {
    final result = await _repository.findRecent(limit: params.limit);
    return result.map(
      (items) => ListTransactionsResult(
        items: items,
        totalCount: items.length,
      ),
    );
  }
}
