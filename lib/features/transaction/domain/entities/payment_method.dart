/// 支払い方法。
///
/// FEATURES.md Section 2.1 の「支払い方法」項目に対応。
/// 取引一覧での絞り込みやアイコン表示に使う。
enum PaymentMethod {
  /// 現金。
  cash,

  /// クレジットカード / デビットカード。
  card,

  /// 銀行振込・口座引落。
  bankTransfer,

  /// Bitcoin 支払い（ライトニング含む）。
  bitcoin,

  /// 上記いずれにも当てはまらない（電子マネー等）。
  other;

  String get storageKey => switch (this) {
        PaymentMethod.cash => 'cash',
        PaymentMethod.card => 'card',
        PaymentMethod.bankTransfer => 'bankTransfer',
        PaymentMethod.bitcoin => 'bitcoin',
        PaymentMethod.other => 'other',
      };

  static PaymentMethod fromStorageKey(String key) => switch (key) {
        'cash' => PaymentMethod.cash,
        'card' => PaymentMethod.card,
        'bankTransfer' => PaymentMethod.bankTransfer,
        'bitcoin' => PaymentMethod.bitcoin,
        'other' => PaymentMethod.other,
        _ => throw ArgumentError('Unknown PaymentMethod storageKey: $key'),
      };
}
