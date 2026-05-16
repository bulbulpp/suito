import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_failure.freezed.dart';

/// settings feature 固有の失敗種別。
@freezed
sealed class SettingsFailure with _$SettingsFailure {
  const SettingsFailure._();

  /// 設定がまだ初期化されていない（初回起動時に seed されていない等）。
  const factory SettingsFailure.notInitialized() = SettingsNotInitialized;

  /// 値が不正（未知の enum 値、空文字、矛盾する組合せ等）。
  const factory SettingsFailure.invalidValue({required String reason}) =
      SettingsInvalidValue;

  /// ローカルストレージ（Hive 等）の読み書き失敗。
  const factory SettingsFailure.storageError({String? message}) =
      SettingsStorageError;

  /// 想定外の例外。
  const factory SettingsFailure.unexpected({String? message}) =
      SettingsUnexpected;
}
