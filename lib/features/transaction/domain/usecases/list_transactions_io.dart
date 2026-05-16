import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/payment_method.dart';
import '../entities/transaction.dart';
import '../entities/transaction_type.dart';

part 'list_transactions_io.freezed.dart';
part 'list_transactions_io.g.dart';

/// `ListTransactionsUseCase` の入力。
///
/// 期間と任意フィルタを指定する。`from` を null にすると「全期間の先頭」、
/// `to` を null にすると「全期間の末尾」として扱う（実装側で `DateTime` の
/// 最小値・最大値に置き換える）。
@freezed
class ListTransactionsParams with _$ListTransactionsParams {
  const factory ListTransactionsParams({
    DateTime? from,
    DateTime? to,
    TransactionType? type,
    PaymentMethod? paymentMethod,
    int? limit,
  }) = _ListTransactionsParams;

  factory ListTransactionsParams.fromJson(Map<String, dynamic> json) =>
      _$ListTransactionsParamsFromJson(json);
}

/// `ListTransactionsUseCase` の成功時の出力。
///
/// 件数取得を別 UseCase にせず、一覧と一緒に総件数も返せるようにしておく
/// （ページネーション導入時に便利）。MVP では `totalCount == items.length`。
@freezed
class ListTransactionsResult with _$ListTransactionsResult {
  const factory ListTransactionsResult({
    required List<Transaction> items,
    required int totalCount,
  }) = _ListTransactionsResult;

  factory ListTransactionsResult.fromJson(Map<String, dynamic> json) =>
      _$ListTransactionsResultFromJson(json);
}
