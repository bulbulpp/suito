import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/transaction.dart';

part 'update_transaction_io.freezed.dart';
part 'update_transaction_io.g.dart';

/// `UpdateTransactionUseCase` の入力。
///
/// 部分更新はサポートせず、常に「更新後の Entity を渡す」契約。
/// 部分更新が必要になったら別 UseCase（例: `RecategorizeTransactionUseCase`）
/// を切る。Phase 0 で多態を抱え込まないための割り切り。
@freezed
class UpdateTransactionParams with _$UpdateTransactionParams {
  const factory UpdateTransactionParams({
    required Transaction transaction,
  }) = _UpdateTransactionParams;

  factory UpdateTransactionParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateTransactionParamsFromJson(json);
}

/// `UpdateTransactionUseCase` の成功時の出力。
///
/// 永続化後の最新状態（`updatedAt` が再採番されたもの）を返す。
@freezed
class UpdateTransactionResult with _$UpdateTransactionResult {
  const factory UpdateTransactionResult({
    required Transaction transaction,
  }) = _UpdateTransactionResult;

  factory UpdateTransactionResult.fromJson(Map<String, dynamic> json) =>
      _$UpdateTransactionResultFromJson(json);
}
