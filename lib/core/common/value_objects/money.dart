import 'package:freezed_annotation/freezed_annotation.dart';

import 'currency.dart';

part 'money.freezed.dart';
part 'money.g.dart';

/// 金額を表す Value Object。
///
/// 通貨ごとに別の型として持つことで「JPY に sat を足す」ような事故を
/// 型レベルで防ぐ（sealed なので switch でパターンマッチ強制）。
///
/// すべて **最小単位の整数** で保持する：
/// - JPY: 円
/// - USD: セント（1 USD = 100 cents）
/// - sat: satoshi（1 BTC = 100,000,000 sat）
///
/// Dart の int は 64bit なので、sat（最大約 21e6 BTC × 1e8 = 2.1e15）も収まる。
///
/// 金額の換算（例: sat → JPY）はこの型では行わない。
/// `exchange` feature の ExchangeRate を使って Application 層で換算する。
@freezed
sealed class Money with _$Money {
  const Money._();

  /// 日本円。`amount` は 1 円単位の整数（負値は禁止しないが、
  /// `isPositive` で「収入扱いの正値か」を判定する）。
  const factory Money.jpy({required int amount}) = JpyMoney;

  /// 米ドル。`cents` は 1 セント単位の整数（1 USD = 100 cents）。
  const factory Money.usd({required int cents}) = UsdMoney;

  /// Bitcoin の satoshi。`amount` は 1 sat 単位の整数。
  const factory Money.sat({required int amount}) = SatMoney;

  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);

  /// この金額の通貨を返す。
  Currency get currency => switch (this) {
        JpyMoney() => Currency.jpy,
        UsdMoney() => Currency.usd,
        SatMoney() => Currency.sat,
      };

  /// 最小単位での整数値を返す（JPY なら円、USD ならセント、sat なら sat）。
  int get minorUnit => switch (this) {
        JpyMoney(:final amount) => amount,
        UsdMoney(:final cents) => cents,
        SatMoney(:final amount) => amount,
      };

  /// 正の値か。0 や負値は false。
  bool get isPositive => minorUnit > 0;

  /// 0 か。
  bool get isZero => minorUnit == 0;
}
