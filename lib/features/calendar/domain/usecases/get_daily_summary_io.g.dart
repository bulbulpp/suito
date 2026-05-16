// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_daily_summary_io.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetDailySummaryParams _$GetDailySummaryParamsFromJson(
  Map<String, dynamic> json,
) => _GetDailySummaryParams(date: DateTime.parse(json['date'] as String));

Map<String, dynamic> _$GetDailySummaryParamsToJson(
  _GetDailySummaryParams instance,
) => <String, dynamic>{'date': instance.date.toIso8601String()};

_GetDailySummaryResult _$GetDailySummaryResultFromJson(
  Map<String, dynamic> json,
) => _GetDailySummaryResult(
  summary: DailySummary.fromJson(json['summary'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetDailySummaryResultToJson(
  _GetDailySummaryResult instance,
) => <String, dynamic>{'summary': instance.summary};
