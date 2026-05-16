// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_transaction_io.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateTransactionParams _$UpdateTransactionParamsFromJson(
  Map<String, dynamic> json,
) => _UpdateTransactionParams(
  transaction: Transaction.fromJson(
    json['transaction'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$UpdateTransactionParamsToJson(
  _UpdateTransactionParams instance,
) => <String, dynamic>{'transaction': instance.transaction};

_UpdateTransactionResult _$UpdateTransactionResultFromJson(
  Map<String, dynamic> json,
) => _UpdateTransactionResult(
  transaction: Transaction.fromJson(
    json['transaction'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$UpdateTransactionResultToJson(
  _UpdateTransactionResult instance,
) => <String, dynamic>{'transaction': instance.transaction};
