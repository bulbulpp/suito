// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_transactions_io.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListTransactionsParams _$ListTransactionsParamsFromJson(
  Map<String, dynamic> json,
) => _ListTransactionsParams(
  from: json['from'] == null ? null : DateTime.parse(json['from'] as String),
  to: json['to'] == null ? null : DateTime.parse(json['to'] as String),
  type: $enumDecodeNullable(_$TransactionTypeEnumMap, json['type']),
  paymentMethod: $enumDecodeNullable(
    _$PaymentMethodEnumMap,
    json['paymentMethod'],
  ),
  limit: (json['limit'] as num?)?.toInt(),
);

Map<String, dynamic> _$ListTransactionsParamsToJson(
  _ListTransactionsParams instance,
) => <String, dynamic>{
  'from': instance.from?.toIso8601String(),
  'to': instance.to?.toIso8601String(),
  'type': _$TransactionTypeEnumMap[instance.type],
  'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod],
  'limit': instance.limit,
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

_ListTransactionsResult _$ListTransactionsResultFromJson(
  Map<String, dynamic> json,
) => _ListTransactionsResult(
  items: (json['items'] as List<dynamic>)
      .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalCount: (json['totalCount'] as num).toInt(),
);

Map<String, dynamic> _$ListTransactionsResultToJson(
  _ListTransactionsResult instance,
) => <String, dynamic>{
  'items': instance.items,
  'totalCount': instance.totalCount,
};
