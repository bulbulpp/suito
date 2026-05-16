import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/common/value_objects/money.dart';
import '../../../bitcoin/domain/entities/bitcoin_record_snapshot.dart';
import '../../../category/domain/entities/category_id.dart';
import '../entities/payment_method.dart';
import '../entities/transaction.dart';
import '../entities/transaction_type.dart';

part 'create_transaction_io.freezed.dart';
part 'create_transaction_io.g.dart';

/// `CreateTransactionUseCase` の入力。
///
/// Entity 全体ではなく「UseCase が必要とするフィールドだけ」を持つことで、
/// id / createdAt / updatedAt の採番責務を UseCase + Infrastructure に押し込む。
@freezed
class CreateTransactionParams with _$CreateTransactionParams {
  const factory CreateTransactionParams({
    required TransactionType type,
    required Money amount,
    required CategoryId categoryId,
    required DateTime occurredAt,
    required PaymentMethod paymentMethod,
    String? memo,
    BitcoinRecordSnapshot? bitcoinSnapshot,
  }) = _CreateTransactionParams;

  factory CreateTransactionParams.fromJson(Map<String, dynamic> json) =>
      _$CreateTransactionParamsFromJson(json);
}

/// `CreateTransactionUseCase` の成功時の出力。
///
/// 単に永続化された [Transaction] を返すラッパ。Phase 1 で UseCase 実装が
/// 「追加で何を返したいか」を判断するときに拡張しやすくしておく。
@freezed
class CreateTransactionResult with _$CreateTransactionResult {
  const factory CreateTransactionResult({
    required Transaction transaction,
  }) = _CreateTransactionResult;

  factory CreateTransactionResult.fromJson(Map<String, dynamic> json) =>
      _$CreateTransactionResultFromJson(json);
}
