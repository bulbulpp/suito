// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailySummary _$DailySummaryFromJson(Map<String, dynamic> json) =>
    _DailySummary(
      date: DateTime.parse(json['date'] as String),
      incomeMinorByCurrency:
          (json['incomeMinorByCurrency'] as Map<String, dynamic>).map(
            (k, e) =>
                MapEntry($enumDecode(_$CurrencyEnumMap, k), (e as num).toInt()),
          ),
      expenseMinorByCurrency:
          (json['expenseMinorByCurrency'] as Map<String, dynamic>).map(
            (k, e) =>
                MapEntry($enumDecode(_$CurrencyEnumMap, k), (e as num).toInt()),
          ),
      transactionCount: (json['transactionCount'] as num).toInt(),
    );

Map<String, dynamic> _$DailySummaryToJson(_DailySummary instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'incomeMinorByCurrency': instance.incomeMinorByCurrency.map(
        (k, e) => MapEntry(_$CurrencyEnumMap[k]!, e),
      ),
      'expenseMinorByCurrency': instance.expenseMinorByCurrency.map(
        (k, e) => MapEntry(_$CurrencyEnumMap[k]!, e),
      ),
      'transactionCount': instance.transactionCount,
    };

const _$CurrencyEnumMap = {
  Currency.jpy: 'jpy',
  Currency.usd: 'usd',
  Currency.sat: 'sat',
};
