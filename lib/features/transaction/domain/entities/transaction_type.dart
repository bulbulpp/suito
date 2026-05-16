/// 取引（Transaction）の種別。
///
/// 家計簿としての「収入か支出か」を表す最小の二値。
/// 振替（口座間移動）は MVP では扱わない（FEATURES.md Section 2.1 参照）。
enum TransactionType {
  /// 収入（給料、臨時収入、投資リターン等）。
  income,

  /// 支出（食費、家賃、買い物等）。
  expense;

  /// 文字列表現（永続化・ログ用）。`name` を使ってもよいが、
  /// 将来 enum 名を変えても永続データを壊さないために明示的に持つ。
  String get storageKey => switch (this) {
        TransactionType.income => 'income',
        TransactionType.expense => 'expense',
      };

  static TransactionType fromStorageKey(String key) => switch (key) {
        'income' => TransactionType.income,
        'expense' => TransactionType.expense,
        _ => throw ArgumentError('Unknown TransactionType storageKey: $key'),
      };
}
