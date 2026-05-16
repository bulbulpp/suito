import 'category.dart';
import 'category_id.dart';
import 'category_kind.dart';

/// アプリ初回起動時に投入されるデフォルトカテゴリ。
///
/// FEATURES.md Section 2.2 に従う。デフォルトは「削除」できず「非表示」
/// にできる仕様のため、ID は不変・固定文字列で持つ（Nostr 同期時に
/// 端末をまたいで同じ ID を再構築できるよう）。
///
/// 色は白黒テーマ前提で薄いグレースケールを既定とし、将来カラーテーマで
/// 上書きできる余地を残す（`colorHex` フィールド）。
class DefaultCategories {
  const DefaultCategories._();

  // ----- 支出デフォルト（FEATURES.md 2.2「支出デフォルト」） -----
  static const _expenseFood = Category(
    id: CategoryId(value: 'default-expense-food'),
    name: '食費',
    icon: '🍴',
    colorHex: '#444444',
    kind: CategoryKind.expense,
    isCustom: false,
    isHidden: false,
    sortOrder: 100,
  );
  static const _expenseTransport = Category(
    id: CategoryId(value: 'default-expense-transport'),
    name: '交通費',
    icon: '🚆',
    colorHex: '#444444',
    kind: CategoryKind.expense,
    isCustom: false,
    isHidden: false,
    sortOrder: 110,
  );
  static const _expenseDaily = Category(
    id: CategoryId(value: 'default-expense-daily'),
    name: '日用品',
    icon: '🧴',
    colorHex: '#444444',
    kind: CategoryKind.expense,
    isCustom: false,
    isHidden: false,
    sortOrder: 120,
  );
  static const _expenseMisc = Category(
    id: CategoryId(value: 'default-expense-misc'),
    name: '雑費',
    icon: '💰',
    colorHex: '#444444',
    kind: CategoryKind.expense,
    isCustom: false,
    isHidden: false,
    sortOrder: 130,
  );
  static const _expenseUtilities = Category(
    id: CategoryId(value: 'default-expense-utilities'),
    name: '光熱費',
    icon: '💡',
    colorHex: '#444444',
    kind: CategoryKind.expense,
    isCustom: false,
    isHidden: false,
    sortOrder: 140,
  );
  static const _expenseRent = Category(
    id: CategoryId(value: 'default-expense-rent'),
    name: '家賃',
    icon: '🏠',
    colorHex: '#444444',
    kind: CategoryKind.expense,
    isCustom: false,
    isHidden: false,
    sortOrder: 150,
  );
  static const _expenseComm = Category(
    id: CategoryId(value: 'default-expense-communication'),
    name: '通信費',
    icon: '📱',
    colorHex: '#444444',
    kind: CategoryKind.expense,
    isCustom: false,
    isHidden: false,
    sortOrder: 160,
  );
  static const _expenseMedical = Category(
    id: CategoryId(value: 'default-expense-medical'),
    name: '医療費',
    icon: '🏥',
    colorHex: '#444444',
    kind: CategoryKind.expense,
    isCustom: false,
    isHidden: false,
    sortOrder: 170,
  );
  static const _expenseEntertainment = Category(
    id: CategoryId(value: 'default-expense-entertainment'),
    name: '娯楽',
    icon: '🎮',
    colorHex: '#444444',
    kind: CategoryKind.expense,
    isCustom: false,
    isHidden: false,
    sortOrder: 180,
  );
  static const _expenseClothing = Category(
    id: CategoryId(value: 'default-expense-clothing'),
    name: '衣類',
    icon: '👕',
    colorHex: '#444444',
    kind: CategoryKind.expense,
    isCustom: false,
    isHidden: false,
    sortOrder: 190,
  );

  // ----- 収入デフォルト（FEATURES.md 2.2「収入デフォルト」） -----
  static const _incomeSalary = Category(
    id: CategoryId(value: 'default-income-salary'),
    name: '給料',
    icon: '💼',
    colorHex: '#222222',
    kind: CategoryKind.income,
    isCustom: false,
    isHidden: false,
    sortOrder: 100,
  );
  static const _incomeBonus = Category(
    id: CategoryId(value: 'default-income-bonus'),
    name: '臨時収入',
    icon: '🎁',
    colorHex: '#222222',
    kind: CategoryKind.income,
    isCustom: false,
    isHidden: false,
    sortOrder: 110,
  );
  static const _incomeInvestment = Category(
    id: CategoryId(value: 'default-income-investment'),
    name: '投資',
    icon: '📈',
    colorHex: '#222222',
    kind: CategoryKind.income,
    isCustom: false,
    isHidden: false,
    sortOrder: 120,
  );
  static const _incomeRefund = Category(
    id: CategoryId(value: 'default-income-refund'),
    name: '返金',
    icon: '↩️',
    colorHex: '#222222',
    kind: CategoryKind.income,
    isCustom: false,
    isHidden: false,
    sortOrder: 130,
  );
  static const _incomeOther = Category(
    id: CategoryId(value: 'default-income-other'),
    name: 'その他',
    icon: '✨',
    colorHex: '#222222',
    kind: CategoryKind.income,
    isCustom: false,
    isHidden: false,
    sortOrder: 140,
  );

  /// 支出デフォルト 10 件。
  static const List<Category> expense = [
    _expenseFood,
    _expenseTransport,
    _expenseDaily,
    _expenseMisc,
    _expenseUtilities,
    _expenseRent,
    _expenseComm,
    _expenseMedical,
    _expenseEntertainment,
    _expenseClothing,
  ];

  /// 収入デフォルト 5 件。
  static const List<Category> income = [
    _incomeSalary,
    _incomeBonus,
    _incomeInvestment,
    _incomeRefund,
    _incomeOther,
  ];

  /// すべてのデフォルトカテゴリ（支出 + 収入）。
  static const List<Category> all = [...expense, ...income];
}
