import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/common/value_objects/currency.dart';

part 'app_settings.freezed.dart';
part 'app_settings.g.dart';

/// テーマモード。OS 連動・ライト固定・ダーク固定の 3 択。
enum AppThemeMode {
  system,
  light,
  dark;

  String get storageKey => switch (this) {
        AppThemeMode.system => 'system',
        AppThemeMode.light => 'light',
        AppThemeMode.dark => 'dark',
      };

  static AppThemeMode fromStorageKey(String key) => switch (key) {
        'system' => AppThemeMode.system,
        'light' => AppThemeMode.light,
        'dark' => AppThemeMode.dark,
        _ => throw ArgumentError('Unknown AppThemeMode storageKey: $key'),
      };
}

/// 表示言語。MVP は日本語 / 英語の 2 択（`core.mdc` 既定は日本語）。
enum AppLocale {
  ja,
  en;

  /// BCP 47 風のタグ。Flutter の `Locale` に変換するときの基底。
  String get tag => switch (this) {
        AppLocale.ja => 'ja',
        AppLocale.en => 'en',
      };

  static AppLocale fromTag(String tag) => switch (tag) {
        'ja' => AppLocale.ja,
        'en' => AppLocale.en,
        _ => throw ArgumentError('Unknown AppLocale tag: $tag'),
      };
}

/// アプリ全体の設定値（1 ユーザー = 1 レコード）。
///
/// - [themeMode]: 表示テーマ。
/// - [locale]: UI 言語。
/// - [defaultCurrency]: 取引入力時のデフォルト通貨。
/// - [biometricLockEnabled]: 起動時の生体認証ロック ON/OFF。
///   実装は OS の Keychain / Keystore + ローカル生体 API（`security.mdc`）。
/// - [updatedAt]: 最後に変更した時刻（同期コンフリクト解消用）。
@freezed
class AppSettings with _$AppSettings {
  const AppSettings._();

  const factory AppSettings({
    required AppThemeMode themeMode,
    required AppLocale locale,
    required Currency defaultCurrency,
    required bool biometricLockEnabled,
    required DateTime updatedAt,
  }) = _AppSettings;

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);

  /// 初回起動時の既定値。
  ///
  /// 日本語 / OS 連動テーマ / JPY 既定 / 生体認証 OFF。
  /// 生体認証は誤操作で締め出されないよう、初回はオフ。
  factory AppSettings.initialDefault({required DateTime now}) => AppSettings(
        themeMode: AppThemeMode.system,
        locale: AppLocale.ja,
        defaultCurrency: Currency.jpy,
        biometricLockEnabled: false,
        updatedAt: now,
      );
}
