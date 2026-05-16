// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bitcoin_record_snapshot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BitcoinRecordSnapshot _$BitcoinRecordSnapshotFromJson(
  Map<String, dynamic> json,
) => _BitcoinRecordSnapshot(
  satAmount: (json['satAmount'] as num).toInt(),
  jpyAtRecordTime: (json['jpyAtRecordTime'] as num).toInt(),
  usdCentsAtRecordTime: (json['usdCentsAtRecordTime'] as num).toInt(),
  btcJpyRate: (json['btcJpyRate'] as num).toInt(),
  btcUsdCentRate: (json['btcUsdCentRate'] as num).toInt(),
  recordedAt: DateTime.parse(json['recordedAt'] as String),
);

Map<String, dynamic> _$BitcoinRecordSnapshotToJson(
  _BitcoinRecordSnapshot instance,
) => <String, dynamic>{
  'satAmount': instance.satAmount,
  'jpyAtRecordTime': instance.jpyAtRecordTime,
  'usdCentsAtRecordTime': instance.usdCentsAtRecordTime,
  'btcJpyRate': instance.btcJpyRate,
  'btcUsdCentRate': instance.btcUsdCentRate,
  'recordedAt': instance.recordedAt.toIso8601String(),
};
