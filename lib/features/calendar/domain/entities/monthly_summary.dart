import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/common/value_objects/currency.dart';
import 'daily_summary.dart';

part 'monthly_summary.freezed.dart';
part 'monthly_summary.g.dart';

/// 1 ヶ月分の収支サマリ。
///
/// カレンダー画面の月切り替えで取得する単位。
/// [dailySummaries] には「取引があった日のみ」を入れる設計（空セルは
/// Presentation 側で month のカレンダー枠と join する）。
///
/// - [year] / [month]: 対象年月（month は 1..12）。
/// - [incomeTotalMinorByCurrency]: 通貨 → 月の収入合計。
/// - [expenseTotalMinorByCurrency]: 通貨 → 月の支出合計。
/// - [dailySummaries]: 取引があった日の DailySummary。`date` 昇順。
@freezed
abstract class MonthlySummary with _$MonthlySummary {
  const MonthlySummary._();

  const factory MonthlySummary({
    required int year,
    required int month,
    required Map<Currency, int> incomeTotalMinorByCurrency,
    required Map<Currency, int> expenseTotalMinorByCurrency,
    required List<DailySummary> dailySummaries,
  }) = _MonthlySummary;

  factory MonthlySummary.fromJson(Map<String, dynamic> json) =>
      _$MonthlySummaryFromJson(json);

  /// 月内取引件数の合計。
  int get totalTransactionCount =>
      dailySummaries.fold(0, (sum, d) => sum + d.transactionCount);

  /// JPY だけ見た月次差額（収入 - 支出）。負値なら赤字。
  int get netJpyMinor {
    final income = incomeTotalMinorByCurrency[Currency.jpy] ?? 0;
    final expense = expenseTotalMinorByCurrency[Currency.jpy] ?? 0;
    return income - expense;
  }
}
