# 02_phase0_contracts.md — Phase 0: 全 feature の契約定義

## このプロンプトをいつ使うか

- `01_scaffold.md` を流し終わって、Flutter + Rust の最小ハロワが動いた後
- 並列開発の **土台となる契約**（Entity、Repository IF、Failure、UseCase I/O）を一気に作る

## なぜ重要か

Phase 0 で契約を新規ファイルとして確定しコミットすることで、Phase 1 以降の並列ワーカーが
**この契約を import するだけで編集しない** 状態を作る。これが Leaf Node 並列の前提。

## 事前条件

- Step 1〜7（scaffold）完了
- main に最新がマージされている
- `fvm flutter analyze` がエラー 0

## やり方

1. Cursor で **新規チャット**を開く（前のチャットのコンテキストを引きずらないため）
2. Agent モード
3. 以下をコピペして送信

---

## ↓ プロンプト本体 ↓

これは Phase 0（契約定義フェーズ）です。`.cursor/rules/core.mdc`, `.cursor/rules/architecture.mdc`, `.cursor/rules/flutter-dart.mdc`, `.cursor/rules/leaf-node.mdc` を読み込んでください。さらに `docs/LEAF_NODE_STRATEGY.md` の Phase 0 セクションを精読してください。

**目的**: `docs/LEAF_NODE_STRATEGY.md` の Phase 0 リストに従って、全 feature の Domain 層を **新規ファイルとして** 作成し、最後に 1 コミットでマージします。

**禁止事項（厳守）**:
- Application / Infrastructure / Presentation には一切触らない
- 既存ファイルの編集は最小限（pubspec.yaml と build_runner 関連のみ）
- 「ついでに」何かを追加しない
- 生成物（`*.freezed.dart`, `*.g.dart`）は build_runner で生成して、**コミットには含める**

## 作業順序

### Step 1: コア共通型を作る

```
lib/core/common/
├── usecase.dart              # 抽象クラス: Future<Either<F, T>> call(P params)
├── failure.dart              # sealed freezed: NetworkFailure, StorageFailure, ValidationFailure 等
└── value_objects/
    ├── money.dart            # sealed freezed: JpyMoney, UsdMoney, SatMoney
    ├── currency.dart         # enum: jpy, usd, sat
    └── transaction_id.dart   # newtype: TransactionId(String)
```

`fpdart` の `Either` を使ってください。

各ファイルを **freezed** で書いてください。コード例（参考）:

```dart
// lib/core/common/value_objects/money.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'currency.dart';

part 'money.freezed.dart';
part 'money.g.dart';

@freezed
sealed class Money with _$Money {
  const Money._();

  const factory Money.jpy({required int amount}) = JpyMoney;
  const factory Money.usd({required int cents}) = UsdMoney;
  const factory Money.sat({required int amount}) = SatMoney;

  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);

  Currency get currency => when(
        jpy: (_) => Currency.jpy,
        usd: (_) => Currency.usd,
        sat: (_) => Currency.sat,
      );

  bool get isPositive => when(
        jpy: (amount) => amount > 0,
        usd: (cents) => cents > 0,
        sat: (amount) => amount > 0,
      );
}
```

### Step 2: transaction feature の Domain 層

`docs/LEAF_NODE_STRATEGY.md` の Phase 0 / transaction セクションのファイル構成のとおり作成してください。

特に重要な型:

- `Transaction`: id, type, amount, categoryId, occurredAt, paymentMethod, memo, bitcoinSnapshot
- `TransactionType` enum: income, expense
- `PaymentMethod` enum: cash, card, bankTransfer, bitcoin, other
- `TransactionRepository` interface: `Future<Either<TransactionFailure, Transaction>> create(Transaction t)`, `Future<Either<TransactionFailure, List<Transaction>>> findByDateRange(DateTime from, DateTime to)`, etc.
- `TransactionFailure`: sealed freezed (notFound, storageError, invalidAmount, etc.)
- UseCase I/O: `CreateTransactionParams`, `ListTransactionsParams` 等の freezed

### Step 3: category feature の Domain 層

同上の流れで:

- `Category`: id, name, kind (income/expense), icon, colorHex, isCustom
- `CategoryRepository`
- `CategoryFailure`
- UseCase I/O

デフォルトカテゴリの定数も `lib/features/category/domain/entities/default_categories.dart` に新規ファイルとして定義してください（`docs/FEATURES.md` の Section 2.2 を参照）。

### Step 4: calendar feature の Domain 層

- `DailySummary`: date, incomeTotal, expenseTotal, transactionCount
- `MonthlySummary`: year, month, incomeTotal, expenseTotal, dailySummaries
- `CalendarRepository`: `Future<Either<CalendarFailure, MonthlySummary>> getMonthlySummary(int year, int month)`
- ⚠️ 注意: calendar の Repository は `TransactionRepository` を集約する形で実装される予定（Phase 1）。Domain 層では **TransactionRepository の interface 型に依存する** ことは OK（同じく Domain 層だから）

### Step 5: exchange feature の Domain 層

- `ExchangeRate`: pair (BTC_JPY / BTC_USD / USD_JPY), rate (整数: 1 BTC → ? minor unit), fetchedAt
- `RatePair` enum: btcJpy, btcUsd, usdJpy
- `ExchangeRepository`: `Future<Either<ExchangeFailure, List<ExchangeRate>>> getRates()`
- `ExchangeFailure`: network, allProvidersFailed

### Step 6: bitcoin feature の Domain 層

- `BitcoinRecordSnapshot`: satAmount, jpyAtRecordTime, usdCentsAtRecordTime, btcJpyRate, btcUsdCentRate, recordedAt
- `BitcoinFailure`: invalidSatAmount, rateUnavailable, etc.
- UseCase I/O: `CreateBitcoinRecordParams` (satAmount, categoryId, memo)、戻り値: `Transaction` (BTC スナップショット含む)

### Step 7: nostr_sync feature の Domain 層

- `NostrEvent`: id, pubkey, createdAt, kind, content, tags, signature
- `RelayInfo`: url, isEnabled, lastSync
- `SyncStatus`: idle, syncing, success(at), error(message)
- `NostrSyncRepository`: pushTransaction, fetchAll, addRelay, removeRelay
- `NostrSyncFailure`: relayUnreachable, signatureFailed, decryptionFailed, etc.

### Step 8: settings feature の Domain 層

- `AppSettings`: themeMode (system/light/dark), locale (jp/en), defaultCurrency, biometricLockEnabled
- `SettingsRepository`: get, update
- `SettingsFailure`: notInitialized, storageError

### Step 9: build_runner 実行とエラー確認

```bash
fvm dart run build_runner build --delete-conflicting-outputs
fvm flutter analyze
```

エラーがあれば修正。生成物（`*.freezed.dart`, `*.g.dart`）は git に含めてください。

### Step 10: 1 つのコミットで完了

```
feat: Phase 0 contracts for all features (domain layer)

Root Cause:
  Establishes the type contracts that Phase 1 parallel workers will depend on.

Problem:
  Without confirmed contracts, parallel workers would collide on entity definitions
  and create downstream rework.

Solution:
  Defined entities, repository interfaces, failure types, and use case I/O for
  transaction, category, calendar, exchange, bitcoin, nostr_sync, and settings.
  All files are new — no existing files modified.

Changes:
  - lib/core/common/*: shared base types and value objects
  - lib/features/<feature>/domain/**: 7 features × (entities + repositories + failures + usecases)

Impact:
  Phase 1 work can now begin in parallel, with each leaf depending on these contracts
  as immutable imports.
```

## 完了報告フォーマット

```
✅ Phase 0 完了

作成したファイル数: <N>
コミット: <hash>

確認:
- [ ] `fvm flutter analyze`: PASS（エラー 0）
- [ ] `fvm dart run build_runner build`: PASS
- [ ] すべての .freezed.dart / .g.dart がコミット済み
- [ ] Application / Infrastructure / Presentation には一切触っていない

次のステップ:
  prompts/03_phase1_parallel_workers.md を流す
  （ただし、まず main にこのコミットを push してマージ）
```

## 質問してよいこと

- Money 型の sat の格納方法（i64 か u64 か → Dart は i64 が安全）
- `freezed` の sealed と通常クラスの使い分けで迷ったとき
- 既に同等の型が `lib/core/common/` にある場合の合流方法
- 依存の方向で迷ったとき（calendar が transaction に依存していいか等）

これらは **手を止めて質問** してから進めてください。

## 質問せず勝手にやってよいこと

- 命名の微調整（プロジェクトのスタイルに合わせる）
- 仕様書に書かれていない自明なフィールドの追加（例: `createdAt`, `updatedAt`）
- doc コメントの追加

## 質問せずやってはいけないこと

- 既存ファイルの編集（pubspec.yaml と build_runner 設定以外）
- ライブラリの追加
- アーキテクチャ違反（Domain が Infrastructure に依存する等）
- 「ついでに UseCase 実装も書いておく」（Phase 1 の Leaf を奪う行為）

これで Phase 0 を始めてください。
