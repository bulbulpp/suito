import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../transaction/domain/entities/transaction.dart';

part 'fetch_from_relays_io.freezed.dart';
part 'fetch_from_relays_io.g.dart';

/// `FetchFromRelaysUseCase` の入力。
@freezed
abstract class FetchFromRelaysParams with _$FetchFromRelaysParams {
  const factory FetchFromRelaysParams({
    /// [since] 以降に作成されたイベントだけ取得（null = すべて）。
    DateTime? since,
  }) = _FetchFromRelaysParams;

  factory FetchFromRelaysParams.fromJson(Map<String, dynamic> json) =>
      _$FetchFromRelaysParamsFromJson(json);
}

/// `FetchFromRelaysUseCase` の成功時の出力。
///
/// 復号 → Transaction 化が済んだ結果を返す（重複除去済み）。
/// マージ（ローカル DB への書き込み）は呼び出し側の責務。
@freezed
abstract class FetchFromRelaysResult with _$FetchFromRelaysResult {
  const factory FetchFromRelaysResult({
    required List<Transaction> transactions,
    required DateTime fetchedAt,
  }) = _FetchFromRelaysResult;

  factory FetchFromRelaysResult.fromJson(Map<String, dynamic> json) =>
      _$FetchFromRelaysResultFromJson(json);
}
