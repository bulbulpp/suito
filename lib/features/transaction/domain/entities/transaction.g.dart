// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Transaction _$TransactionFromJson(Map<String, dynamic> json) => _Transaction(
  id: TransactionId.fromJson(json['id'] as Map<String, dynamic>),
  type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
  amount: Money.fromJson(json['amount'] as Map<String, dynamic>),
  categoryId: CategoryId.fromJson(json['categoryId'] as Map<String, dynamic>),
  occurredAt: DateTime.parse(json['occurredAt'] as String),
  paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  memo: json['memo'] as String?,
  bitcoinSnapshot: json['bitcoinSnapshot'] == null
      ? null
      : BitcoinRecordSnapshot.fromJson(
          json['bitcoinSnapshot'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$TransactionToJson(_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'amount': instance.amount,
      'categoryId': instance.categoryId,
      'occurredAt': instance.occurredAt.toIso8601String(),
      'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
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
