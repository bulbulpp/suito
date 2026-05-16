/// アプリが扱う通貨単位。
///
/// - [jpy]: 日本円。最小単位 = 1 円。整数で保持。
/// - [usd]: 米ドル。最小単位 = 1 セント（= 0.01 USD）。整数（セント）で保持し、
///          表示時に 100 で割る。
/// - [sat]: Bitcoin の satoshi。1 BTC = 100,000,000 sat。最小単位 = 1 sat。
///          整数で保持。
enum Currency {
  jpy,
  usd,
  sat;

  /// 通貨コード（表示・ログ用）。
  String get code => switch (this) {
        Currency.jpy => 'JPY',
        Currency.usd => 'USD',
        Currency.sat => 'sat',
      };

  /// この通貨で「1 単位 = 最小単位の何倍か」を返す。
  ///
  /// 例: USD は 1 USD = 100 cents なので 100。JPY と sat は 1。
  /// 表示時に「整数の最小単位 → 人が読む通貨単位」へ変換する際に使う。
  int get minorPerMajor => switch (this) {
        Currency.jpy => 1,
        Currency.usd => 100,
        Currency.sat => 1,
      };

  /// ユーザー表示用のシンボル（参考。実際の整形は Presentation 層で行う）。
  String get symbol => switch (this) {
        Currency.jpy => '¥',
        Currency.usd => r'$',
        Currency.sat => 'sat',
      };
}
