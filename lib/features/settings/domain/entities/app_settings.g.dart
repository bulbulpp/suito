// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppSettings _$AppSettingsFromJson(Map<String, dynamic> json) => _AppSettings(
  themeMode: $enumDecode(_$AppThemeModeEnumMap, json['themeMode']),
  locale: $enumDecode(_$AppLocaleEnumMap, json['locale']),
  defaultCurrency: $enumDecode(_$CurrencyEnumMap, json['defaultCurrency']),
  biometricLockEnabled: json['biometricLockEnabled'] as bool,
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$AppSettingsToJson(_AppSettings instance) =>
    <String, dynamic>{
      'themeMode': _$AppThemeModeEnumMap[instance.themeMode]!,
      'locale': _$AppLocaleEnumMap[instance.locale]!,
      'defaultCurrency': _$CurrencyEnumMap[instance.defaultCurrency]!,
      'biometricLockEnabled': instance.biometricLockEnabled,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$AppThemeModeEnumMap = {
  AppThemeMode.system: 'system',
  AppThemeMode.light: 'light',
  AppThemeMode.dark: 'dark',
};

const _$AppLocaleEnumMap = {AppLocale.ja: 'ja', AppLocale.en: 'en'};

const _$CurrencyEnumMap = {
  Currency.jpy: 'jpy',
  Currency.usd: 'usd',
  Currency.sat: 'sat',
};
