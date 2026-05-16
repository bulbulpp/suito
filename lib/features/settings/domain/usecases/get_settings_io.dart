import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/app_settings.dart';

part 'get_settings_io.freezed.dart';
part 'get_settings_io.g.dart';

/// `GetSettingsUseCase` の入力。
///
/// 引数なし。UseCase は `Future<Either<SettingsFailure, GetSettingsResult>>`
/// を返す（[NoParams] ではなく専用型を切ったのは将来引数を追加しやすくするため）。
@freezed
abstract class GetSettingsParams with _$GetSettingsParams {
  const factory GetSettingsParams() = _GetSettingsParams;

  factory GetSettingsParams.fromJson(Map<String, dynamic> json) =>
      _$GetSettingsParamsFromJson(json);
}

/// `GetSettingsUseCase` の成功時の出力。
@freezed
abstract class GetSettingsResult with _$GetSettingsResult {
  const factory GetSettingsResult({
    required AppSettings settings,
  }) = _GetSettingsResult;

  factory GetSettingsResult.fromJson(Map<String, dynamic> json) =>
      _$GetSettingsResultFromJson(json);
}
