import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/app_settings.dart';

part 'update_settings_io.freezed.dart';
part 'update_settings_io.g.dart';

/// `UpdateSettingsUseCase` の入力。
///
/// 部分更新ではなく「更新後の AppSettings をそのまま渡す」契約。
/// 部分更新が必要なら UI 側で `current.copyWith(...)` を作って渡す。
@freezed
class UpdateSettingsParams with _$UpdateSettingsParams {
  const factory UpdateSettingsParams({
    required AppSettings settings,
  }) = _UpdateSettingsParams;

  factory UpdateSettingsParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateSettingsParamsFromJson(json);
}

/// `UpdateSettingsUseCase` の成功時の出力。
@freezed
class UpdateSettingsResult with _$UpdateSettingsResult {
  const factory UpdateSettingsResult({
    required AppSettings settings,
  }) = _UpdateSettingsResult;

  factory UpdateSettingsResult.fromJson(Map<String, dynamic> json) =>
      _$UpdateSettingsResultFromJson(json);
}
