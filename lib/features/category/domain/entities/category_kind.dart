/// カテゴリの種別。
///
/// 取引（Transaction）の `TransactionType` と対応する。
/// 「支出」カテゴリには支出のみ、「収入」カテゴリには収入のみが紐づくよう
/// Application 層でバリデーションする（型レベルで強制はしない：データ移行を
/// 容易にするため）。
enum CategoryKind {
  /// 収入カテゴリ（給料、臨時収入、投資 等）。
  income,

  /// 支出カテゴリ（食費、家賃、交通費 等）。
  expense;

  String get storageKey => switch (this) {
        CategoryKind.income => 'income',
        CategoryKind.expense => 'expense',
      };

  static CategoryKind fromStorageKey(String key) => switch (key) {
        'income' => CategoryKind.income,
        'expense' => CategoryKind.expense,
        _ => throw ArgumentError('Unknown CategoryKind storageKey: $key'),
      };
}
