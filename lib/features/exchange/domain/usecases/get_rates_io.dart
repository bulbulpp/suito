import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/exchange_rate.dart';

part 'get_rates_io.freezed.dart';
part 'get_rates_io.g.dart';

/// `GetRatesUseCase` の入力。
@freezed
abstract class GetRatesParams with _$GetRatesParams {
  const factory GetRatesParams({
    @Default(false) bool forceRefresh,
  }) = _GetRatesParams;

  factory GetRatesParams.fromJson(Map<String, dynamic> json) =>
      _$GetRatesParamsFromJson(json);
}

/// `GetRatesUseCase` の成功時の出力。
///
/// - [rates]: 取得できた全ペアのレート。
/// - [isFromCache]: キャッシュから返したかどうか。UI で「最終更新: N 分前」
///   などの表示判定に使う。
@freezed
abstract class GetRatesResult with _$GetRatesResult {
  const factory GetRatesResult({
    required List<ExchangeRate> rates,
    required bool isFromCache,
  }) = _GetRatesResult;

  factory GetRatesResult.fromJson(Map<String, dynamic> json) =>
      _$GetRatesResultFromJson(json);
}
