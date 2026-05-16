// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transaction_io.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeleteTransactionParams _$DeleteTransactionParamsFromJson(
  Map<String, dynamic> json,
) => _DeleteTransactionParams(
  id: TransactionId.fromJson(json['id'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DeleteTransactionParamsToJson(
  _DeleteTransactionParams instance,
) => <String, dynamic>{'id': instance.id};

_DeleteTransactionResult _$DeleteTransactionResultFromJson(
  Map<String, dynamic> json,
) => _DeleteTransactionResult(
  deletedId: TransactionId.fromJson(json['deletedId'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DeleteTransactionResultToJson(
  _DeleteTransactionResult instance,
) => <String, dynamic>{'deletedId': instance.deletedId};
