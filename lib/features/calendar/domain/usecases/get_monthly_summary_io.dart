import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/monthly_summary.dart';

part 'get_monthly_summary_io.freezed.dart';
part 'get_monthly_summary_io.g.dart';

/// `GetMonthlySummaryUseCase` の入力。
@freezed
class GetMonthlySummaryParams with _$GetMonthlySummaryParams {
  const factory GetMonthlySummaryParams({
    required int year,
    required int month,
  }) = _GetMonthlySummaryParams;

  factory GetMonthlySummaryParams.fromJson(Map<String, dynamic> json) =>
      _$GetMonthlySummaryParamsFromJson(json);
}

/// `GetMonthlySummaryUseCase` の成功時の出力。
@freezed
class GetMonthlySummaryResult with _$GetMonthlySummaryResult {
  const factory GetMonthlySummaryResult({
    required MonthlySummary summary,
  }) = _GetMonthlySummaryResult;

  factory GetMonthlySummaryResult.fromJson(Map<String, dynamic> json) =>
      _$GetMonthlySummaryResultFromJson(json);
}
