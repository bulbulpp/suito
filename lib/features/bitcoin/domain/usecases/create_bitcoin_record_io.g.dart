// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_bitcoin_record_io.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateBitcoinRecordParams _$CreateBitcoinRecordParamsFromJson(
  Map<String, dynamic> json,
) => _CreateBitcoinRecordParams(
  satAmount: (json['satAmount'] as num).toInt(),
  categoryId: CategoryId.fromJson(json['categoryId'] as Map<String, dynamic>),
  occurredAt: DateTime.parse(json['occurredAt'] as String),
  memo: json['memo'] as String?,
);

Map<String, dynamic> _$CreateBitcoinRecordParamsToJson(
  _CreateBitcoinRecordParams instance,
) => <String, dynamic>{
  'satAmount': instance.satAmount,
  'categoryId': instance.categoryId,
  'occurredAt': instance.occurredAt.toIso8601String(),
  'memo': instance.memo,
};

_CreateBitcoinRecordResult _$CreateBitcoinRecordResultFromJson(
  Map<String, dynamic> json,
) => _CreateBitcoinRecordResult(
  transaction: Transaction.fromJson(
    json['transaction'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CreateBitcoinRecordResultToJson(
  _CreateBitcoinRecordResult instance,
) => <String, dynamic>{'transaction': instance.transaction};
