import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_failure.freezed.dart';

/// exchange feature 固有の失敗種別。
@freezed
sealed class ExchangeFailure with _$ExchangeFailure {
  const ExchangeFailure._();

  /// ネットワークに到達できない（オフライン、DNS 解決失敗、タイムアウト等）。
  const factory ExchangeFailure.network({String? message}) =
      ExchangeNetworkError;

  /// 全プロバイダが失敗した（フェイルオーバ尽きた）。
  const factory ExchangeFailure.allProvidersFailed({
    required List<String> attemptedProviders,
  }) = ExchangeAllProvidersFailed;

  /// プロバイダのレスポンスが想定外（JSON 構造変更、欠損、負値等）。
  const factory ExchangeFailure.invalidResponse({
    required String provider,
    String? message,
  }) = ExchangeInvalidResponse;

  /// レート制限に引っかかった（429 等）。再試行は呼び出し側の判断。
  const factory ExchangeFailure.rateLimited({String? provider}) =
      ExchangeRateLimited;

  /// 想定外の例外。
  const factory ExchangeFailure.unexpected({String? message}) =
      ExchangeUnexpected;
}
