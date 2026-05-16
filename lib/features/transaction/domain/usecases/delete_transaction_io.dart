import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/common/value_objects/transaction_id.dart';

part 'delete_transaction_io.freezed.dart';
part 'delete_transaction_io.g.dart';

/// `DeleteTransactionUseCase` の入力。物理削除（論理削除は MVP では扱わない）。
@freezed
class DeleteTransactionParams with _$DeleteTransactionParams {
  const factory DeleteTransactionParams({
    required TransactionId id,
  }) = _DeleteTransactionParams;

  factory DeleteTransactionParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteTransactionParamsFromJson(json);
}

/// `DeleteTransactionUseCase` の成功時の出力。
///
/// 削除済み ID を返す。UI で「○○を削除しました」のトーストに使う。
@freezed
class DeleteTransactionResult with _$DeleteTransactionResult {
  const factory DeleteTransactionResult({
    required TransactionId deletedId,
  }) = _DeleteTransactionResult;

  factory DeleteTransactionResult.fromJson(Map<String, dynamic> json) =>
      _$DeleteTransactionResultFromJson(json);
}
