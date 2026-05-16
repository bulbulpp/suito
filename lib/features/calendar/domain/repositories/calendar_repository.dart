import 'package:fpdart/fpdart.dart';

import '../entities/daily_summary.dart';
import '../entities/monthly_summary.dart';
import '../failures/calendar_failure.dart';

/// カレンダー画面が必要とする集計データを取得する Repository の契約。
///
/// 内部実装（Phase 1）は `TransactionRepository` を集約して
/// 集計を作る形になる見込み。Domain 層では「集計の出し方」だけを規定し、
/// データソースの内訳は隠蔽する。
///
/// 集計は計算量が大きくなり得るので、Infrastructure 側で結果をキャッシュ
/// しても良い（その判断は Phase 1 に委ねる）。
abstract interface class CalendarRepository {
  /// 指定年月の月次サマリを返す。
  ///
  /// [year]: 西暦（例: 2026）。
  /// [month]: 1..12。範囲外なら [CalendarFailure.invalidRange]。
  Future<Either<CalendarFailure, MonthlySummary>> getMonthlySummary({
    required int year,
    required int month,
  });

  /// 指定 1 日のサマリを返す。
  ///
  /// その日に取引が 1 件も無い場合、すべて 0 の [DailySummary] を返す
  /// （Either の Right 側 / 失敗ではない）。
  Future<Either<CalendarFailure, DailySummary>> getDailySummary({
    required DateTime date,
  });
}
