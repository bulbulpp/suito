// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_monthly_summary_io.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetMonthlySummaryParams _$GetMonthlySummaryParamsFromJson(
  Map<String, dynamic> json,
) => _GetMonthlySummaryParams(
  year: (json['year'] as num).toInt(),
  month: (json['month'] as num).toInt(),
);

Map<String, dynamic> _$GetMonthlySummaryParamsToJson(
  _GetMonthlySummaryParams instance,
) => <String, dynamic>{'year': instance.year, 'month': instance.month};

_GetMonthlySummaryResult _$GetMonthlySummaryResultFromJson(
  Map<String, dynamic> json,
) => _GetMonthlySummaryResult(
  summary: MonthlySummary.fromJson(json['summary'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetMonthlySummaryResultToJson(
  _GetMonthlySummaryResult instance,
) => <String, dynamic>{'summary': instance.summary};
