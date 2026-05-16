import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/daily_summary.dart';

part 'get_daily_summary_io.freezed.dart';
part 'get_daily_summary_io.g.dart';

/// `GetDailySummaryUseCase` の入力。
@freezed
abstract class GetDailySummaryParams with _$GetDailySummaryParams {
  const factory GetDailySummaryParams({
    required DateTime date,
  }) = _GetDailySummaryParams;

  factory GetDailySummaryParams.fromJson(Map<String, dynamic> json) =>
      _$GetDailySummaryParamsFromJson(json);
}

/// `GetDailySummaryUseCase` の成功時の出力。
@freezed
abstract class GetDailySummaryResult with _$GetDailySummaryResult {
  const factory GetDailySummaryResult({
    required DailySummary summary,
  }) = _GetDailySummaryResult;

  factory GetDailySummaryResult.fromJson(Map<String, dynamic> json) =>
      _$GetDailySummaryResultFromJson(json);
}
