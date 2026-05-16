// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExchangeRate _$ExchangeRateFromJson(Map<String, dynamic> json) =>
    _ExchangeRate(
      pair: $enumDecode(_$RatePairEnumMap, json['pair']),
      rate: (json['rate'] as num).toInt(),
      fetchedAt: DateTime.parse(json['fetchedAt'] as String),
      source: json['source'] as String?,
    );

Map<String, dynamic> _$ExchangeRateToJson(_ExchangeRate instance) =>
    <String, dynamic>{
      'pair': _$RatePairEnumMap[instance.pair]!,
      'rate': instance.rate,
      'fetchedAt': instance.fetchedAt.toIso8601String(),
      'source': instance.source,
    };

const _$RatePairEnumMap = {
  RatePair.btcJpy: 'btcJpy',
  RatePair.btcUsd: 'btcUsd',
  RatePair.usdJpy: 'usdJpy',
};
