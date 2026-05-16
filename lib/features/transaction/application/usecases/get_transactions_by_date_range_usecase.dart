import 'package:fpdart/fpdart.dart';

import '../../../../core/common/usecase.dart';
import '../../domain/failures/transaction_failure.dart';
import '../../domain/repositories/transaction_repository.dart';
import '../../domain/usecases/list_transactions_io.dart';

/// 期間（`from` 以上、`to` 未満）で取引を取得するユースケース。
///
/// カレンダー画面の月次表示、月次/週次集計、CSV エクスポートの期間指定など
/// に使う。
///
/// 入力 [ListTransactionsParams] の解釈:
/// - `from` / `to`: いずれも **必須**。null のときは [TransactionFailure.invalidDate]
///   を返す（業務上、期間指定がない呼び出しは想定外）。
/// - `type` / `paymentMethod`: 任意フィルタ。null なら絞り込まない。
/// - `limit`: 本ユースケースでは **無視**（Repository は期間内すべてを返す。
///   ページネーションが必要になったら別 UseCase に切る）。
class GetTransactionsByDateRangeUseCase
    extends UseCase<TransactionFailure, ListTransactionsParams,
        ListTransactionsResult> {
  GetTransactionsByDateRangeUseCase(this._repository);

  final TransactionRepository _repository;

  @override
  Future<Either<TransactionFailure, ListTransactionsResult>> call(
    ListTransactionsParams params,
  ) async {
    final from = params.from;
    final to = params.to;
    if (from == null || to == null) {
      return const Left(
        TransactionFailure.invalidDate(
          reason: 'from and to are required for date range query',
        ),
      );
    }
    if (!from.isBefore(to)) {
      return const Left(
        TransactionFailure.invalidDate(
          reason: 'from must be strictly before to',
        ),
      );
    }

    final result = await _repository.findByDateRange(
      from: from,
      to: to,
      type: params.type,
      paymentMethod: params.paymentMethod,
    );
    return result.map(
      (items) => ListTransactionsResult(
        items: items,
        totalCount: items.length,
      ),
    );
  }
}
