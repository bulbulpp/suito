// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MonthlySummary _$MonthlySummaryFromJson(Map<String, dynamic> json) =>
    _MonthlySummary(
      year: (json['year'] as num).toInt(),
      month: (json['month'] as num).toInt(),
      incomeTotalMinorByCurrency:
          (json['incomeTotalMinorByCurrency'] as Map<String, dynamic>).map(
            (k, e) =>
                MapEntry($enumDecode(_$CurrencyEnumMap, k), (e as num).toInt()),
          ),
      expenseTotalMinorByCurrency:
          (json['expenseTotalMinorByCurrency'] as Map<String, dynamic>).map(
            (k, e) =>
                MapEntry($enumDecode(_$CurrencyEnumMap, k), (e as num).toInt()),
          ),
      dailySummaries: (json['dailySummaries'] as List<dynamic>)
          .map((e) => DailySummary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MonthlySummaryToJson(_MonthlySummary instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'incomeTotalMinorByCurrency': instance.incomeTotalMinorByCurrency.map(
        (k, e) => MapEntry(_$CurrencyEnumMap[k]!, e),
      ),
      'expenseTotalMinorByCurrency': instance.expenseTotalMinorByCurrency.map(
        (k, e) => MapEntry(_$CurrencyEnumMap[k]!, e),
      ),
      'dailySummaries': instance.dailySummaries,
    };

const _$CurrencyEnumMap = {
  Currency.jpy: 'jpy',
  Currency.usd: 'usd',
  Currency.sat: 'sat',
};
