// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_rates_io.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetRatesParams _$GetRatesParamsFromJson(Map<String, dynamic> json) =>
    _GetRatesParams(forceRefresh: json['forceRefresh'] as bool? ?? false);

Map<String, dynamic> _$GetRatesParamsToJson(_GetRatesParams instance) =>
    <String, dynamic>{'forceRefresh': instance.forceRefresh};

_GetRatesResult _$GetRatesResultFromJson(Map<String, dynamic> json) =>
    _GetRatesResult(
      rates: (json['rates'] as List<dynamic>)
          .map((e) => ExchangeRate.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFromCache: json['isFromCache'] as bool,
    );

Map<String, dynamic> _$GetRatesResultToJson(_GetRatesResult instance) =>
    <String, dynamic>{
      'rates': instance.rates,
      'isFromCache': instance.isFromCache,
    };
