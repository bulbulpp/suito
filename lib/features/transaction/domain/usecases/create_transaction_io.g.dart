// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transaction_io.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateTransactionParams _$CreateTransactionParamsFromJson(
  Map<String, dynamic> json,
) => _CreateTransactionParams(
  type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
  amount: Money.fromJson(json['amount'] as Map<String, dynamic>),
  categoryId: CategoryId.fromJson(json['categoryId'] as Map<String, dynamic>),
  occurredAt: DateTime.parse(json['occurredAt'] as String),
  paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
  memo: json['memo'] as String?,
  bitcoinSnapshot: json['bitcoinSnapshot'] == null
      ? null
      : BitcoinRecordSnapshot.fromJson(
          json['bitcoinSnapshot'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$CreateTransactionParamsToJson(
  _CreateTransactionParams instance,
) => <String, dynamic>{
  'type': _$TransactionTypeEnumMap[instance.type]!,
  'amount': instance.amount,
  'categoryId': instance.categoryId,
  'occurredAt': instance.occurredAt.toIso8601String(),
  'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
  'memo': instance.memo,
  'bitcoinSnapshot': instance.bitcoinSnapshot,
};

const _$TransactionTypeEnumMap = {
  TransactionType.income: 'income',
  TransactionType.expense: 'expense',
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.cash: 'cash',
  PaymentMethod.card: 'card',
  PaymentMethod.bankTransfer: 'bankTransfer',
  PaymentMethod.bitcoin: 'bitcoin',
  PaymentMethod.other: 'other',
};

_CreateTransactionResult _$CreateTransactionResultFromJson(
  Map<String, dynamic> json,
) => _CreateTransactionResult(
  transaction: Transaction.fromJson(
    json['transaction'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CreateTransactionResultToJson(
  _CreateTransactionResult instance,
) => <String, dynamic>{'transaction': instance.transaction};
