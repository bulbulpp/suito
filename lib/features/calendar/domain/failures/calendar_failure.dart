import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_failure.freezed.dart';

/// calendar feature 固有の失敗種別。
///
/// 内部的に transaction repository に依存する想定だが、上位レイヤーには
/// 「カレンダー操作の失敗」として翻訳して返す。
@freezed
sealed class CalendarFailure with _$CalendarFailure {
  const CalendarFailure._();

  /// 年月の指定が不正（month が 1..12 の範囲外、year が極端な値等）。
  const factory CalendarFailure.invalidRange({required String reason}) =
      CalendarInvalidRange;

  /// 内側で呼んだ transaction repository が失敗した。
  const factory CalendarFailure.transactionSourceError({
    required String message,
  }) = CalendarTransactionSourceError;

  /// ストレージ層の失敗（直接アクセスする場合のフォールバック）。
  const factory CalendarFailure.storageError({String? message}) =
      CalendarStorageError;

  /// 想定外の例外。
  const factory CalendarFailure.unexpected({String? message}) =
      CalendarUnexpected;
}
