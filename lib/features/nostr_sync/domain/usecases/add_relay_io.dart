import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/relay_info.dart';

part 'add_relay_io.freezed.dart';
part 'add_relay_io.g.dart';

/// `AddRelayUseCase` の入力。
///
/// URL が `wss://` 以外の場合は UseCase 側で
/// [NostrSyncFailure.invalidRelayUrl] を返す。
@freezed
class AddRelayParams with _$AddRelayParams {
  const factory AddRelayParams({
    required String url,
    String? displayName,
  }) = _AddRelayParams;

  factory AddRelayParams.fromJson(Map<String, dynamic> json) =>
      _$AddRelayParamsFromJson(json);
}

/// `AddRelayUseCase` の成功時の出力。
@freezed
class AddRelayResult with _$AddRelayResult {
  const factory AddRelayResult({
    required RelayInfo relay,
  }) = _AddRelayResult;

  factory AddRelayResult.fromJson(Map<String, dynamic> json) =>
      _$AddRelayResultFromJson(json);
}
