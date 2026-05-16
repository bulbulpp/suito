import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/common/value_objects/currency.dart';

part 'daily_summary.freezed.dart';
part 'daily_summary.g.dart';

/// 1 日分の収支サマリ。
///
/// カレンダー画面の各セルに「収入合計／支出合計／取引件数」を表示するための
/// 軽量データ。Transaction 全件を Presentation 層に流すと重いので、
/// Application 層で集計してこの型に詰めて渡す。
///
/// 通貨単位ごとに別の合計を保持する（JPY と sat を 1 つの int で混ぜない）。
/// 表示時にレートで換算して合算するかどうかは Presentation 層の判断。
///
/// - [date]: 集計対象日（その日の 00:00 ローカル時刻）。
/// - [incomeMinorByCurrency]: 通貨 → その日の収入合計（最小単位）。
/// - [expenseMinorByCurrency]: 通貨 → その日の支出合計（最小単位）。
/// - [transactionCount]: その日の取引件数（全通貨込み）。
@freezed
abstract class DailySummary with _$DailySummary {
  const DailySummary._();

  const factory DailySummary({
    required DateTime date,
    required Map<Currency, int> incomeMinorByCurrency,
    required Map<Currency, int> expenseMinorByCurrency,
    required int transactionCount,
  }) = _DailySummary;

  factory DailySummary.fromJson(Map<String, dynamic> json) =>
      _$DailySummaryFromJson(json);

  /// 取引が 1 件もなければ true。カレンダーで「・」表示にする判定に使う。
  bool get isEmpty => transactionCount == 0;

  /// 「支出が収入より多い日」かどうか（JPY のみで判定する簡易版）。
  ///
  /// 通貨横断の比較は本来できないので、まず JPY だけで判定する。
  /// 他通貨を扱う精緻な判定は Presentation 層で為替換算して行う。
  bool get isExpenseHeavyJpy {
    final income = incomeMinorByCurrency[Currency.jpy] ?? 0;
    final expense = expenseMinorByCurrency[Currency.jpy] ?? 0;
    return expense > income;
  }
}
