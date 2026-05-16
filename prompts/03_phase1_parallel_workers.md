# 03_phase1_parallel_workers.md — Phase 1: 並列 Leaf 実装

## このプロンプトをいつ使うか

- `02_phase0_contracts.md` が完了し、Domain 層がすべて main にマージ済み
- これから **Application 層 + Infrastructure 層** を並列で実装する段階

## 全体像

Phase 1 では `docs/LEAF_NODE_STRATEGY.md` に列挙された **約 25 個の Leaf** を、**git worktree + 複数の Cursor ウィンドウ** で並列実装します。

```
1 Leaf = 1 worktree = 1 ブランチ = 1 PR
```

各 Leaf は **新規ファイル作成のみ**。既存ファイルは触らない（最大の Leaf Node 原則）。

---

## ステップ A: worktree を準備する（人間が手動でやる）

ターミナルで実行:

```bash
# suito リポジトリのルートで
cd ~/path/to/suito

# 並列 worktree 用の親ディレクトリを作る（リポジトリの外側）
mkdir -p ../suito-wt

# Leaf ごとに worktree を切る（最初は 3〜4 並列がおすすめ。慣れたら増やす）
git worktree add ../suito-wt/transaction-app    -b leaf/transaction-app-create-usecase
git worktree add ../suito-wt/transaction-infra  -b leaf/transaction-infra-hive-repo
git worktree add ../suito-wt/category-app       -b leaf/category-app-usecases
git worktree add ../suito-wt/exchange-infra     -b leaf/exchange-infra-rust-bridge
```

**確認**:

```bash
git worktree list
# 各 worktree がそれぞれ別のブランチを指していることを確認
```

---

## ステップ B: 各 worktree を別の Cursor ウィンドウで開く

1. Cursor を起動
2. `File > Open Folder` で `../suito-wt/transaction-app` を開く（新規ウィンドウで）
3. 同様に他の worktree もそれぞれ別ウィンドウで開く
4. **各ウィンドウの statusline / titlebar に Leaf 名（ブランチ名）が出ていることを必ず目視確認**

> **重要**: 1 つのウィンドウで複数 Leaf を行き来しない。混乱して God File を触る事故の元。

---

## ステップ C: 各ウィンドウで以下のプロンプトを送る

各 Leaf にはそれぞれ専用プロンプトを使います。下に Leaf ごとのテンプレートを並べました。**自分が開いている worktree に対応するプロンプトのみコピペ**してください。

---

## ↓ Leaf プロンプト集 ↓

### Leaf: `leaf/transaction-app-create-usecase`

これは Phase 1 の Leaf Node 実装です。`.cursor/rules/core.mdc`, `.cursor/rules/architecture.mdc`, `.cursor/rules/flutter-dart.mdc`, `.cursor/rules/leaf-node.mdc` を読んでください。

**現在のブランチ**: `leaf/transaction-app-create-usecase`
**worktree**: `../suito-wt/transaction-app`

**目的**: `lib/features/transaction/application/usecases/` に、Transaction の CRUD 系 UseCase を **新規ファイルとして** 実装します。

**作成する新規ファイル**（これ以外は触らない）:
- `lib/features/transaction/application/usecases/create_transaction_usecase.dart`
- `lib/features/transaction/application/usecases/update_transaction_usecase.dart`
- `lib/features/transaction/application/usecases/delete_transaction_usecase.dart`
- `lib/features/transaction/application/usecases/get_transactions_usecase.dart`
- `lib/features/transaction/application/usecases/get_transactions_by_date_range_usecase.dart`

**読み取り可（編集不可）**:
- `lib/features/transaction/domain/**` （Phase 0 でマージ済み）
- `lib/core/common/**`

**禁止**:
- Infrastructure / Presentation / Domain への編集
- `providers/`, `main.dart`, `app_router.dart` への編集
- 他 feature への編集

**実装方針**:
- 各 UseCase は `lib/core/common/usecase.dart` の抽象クラスを implements
- Repository は `TransactionRepository`（Phase 0 で定義済み IF）を constructor 注入
- 戻り値は `Future<Either<Failure, T>>`
- 入力パラメータは Freezed の Params クラス（例: `CreateTransactionParams`）

**作業フロー**:
1. まず `lib/features/transaction/domain/` 配下を `read` で確認し、IF を把握
2. 5 つの UseCase ファイルを作成
3. `dart run build_runner build --delete-conflicting-outputs`
4. `fvm flutter analyze` がエラー 0 になることを確認
5. 1 コミット: `feat(transaction): add CRUD usecases (leaf)`
6. `git push -u origin leaf/transaction-app-create-usecase`
7. 完了報告（作成ファイル一覧 + analyze 結果）

---

### Leaf: `leaf/transaction-infra-hive-repo`

これは Phase 1 の Leaf Node 実装です。`.cursor/rules/core.mdc`, `.cursor/rules/architecture.mdc`, `.cursor/rules/flutter-dart.mdc`, `.cursor/rules/leaf-node.mdc` を読んでください。

**現在のブランチ**: `leaf/transaction-infra-hive-repo`

**目的**: Hive を使った `TransactionRepository` の実装を **新規ファイルとして** 作成。

**作成する新規ファイル**:
- `lib/features/transaction/infrastructure/datasources/transaction_local_datasource.dart`
- `lib/features/transaction/infrastructure/models/transaction_hive_model.dart`（Hive 用 @HiveType）
- `lib/features/transaction/infrastructure/repositories/transaction_repository_impl.dart`

**禁止**: Phase 0 の domain 層を変更しない。providers / main.dart / app_router.dart を変更しない。

**実装方針**:
- `transaction_hive_model.dart`: `@HiveType(typeId: 1)` でアノテートした POJO。typeId は **feature ごとに固定値**（次の表に従う）:
  - transaction: 1, category: 2, settings: 3, exchange_cache: 4, bitcoin_snapshot: 5
- `TransactionHiveModel.fromEntity()` / `.toEntity()` で Domain Entity と相互変換
- Hive box 名: `transactions_box`
- 例外は `Either<Failure, T>` の Left に変換（`StorageFailure`）

**作業フロー**:
1. Domain の `Transaction` Entity を read
2. 3 ファイル作成
3. `dart run build_runner build --delete-conflicting-outputs`（HiveType の type adapter 生成）
4. analyze エラー 0
5. 1 コミット: `feat(transaction): add Hive-based repository implementation (leaf)`
6. push & 報告

---

### Leaf: `leaf/category-app-usecases`

これは Phase 1 の Leaf Node 実装です。`.cursor/rules/{core,architecture,flutter-dart,leaf-node}.mdc` を読んでください。

**作成する新規ファイル**:
- `lib/features/category/application/usecases/get_categories_usecase.dart`
- `lib/features/category/application/usecases/seed_default_categories_usecase.dart`（初回起動時にデフォルトカテゴリを投入）

**実装方針**:
- デフォルトカテゴリは `docs/FEATURES.md` の一覧に従う
- 支出カテゴリ: 食費 🍴, 交通費 🚆, 日用品 🧴, 雑費 💰, 光熱費 💡, 家賃 🏠, 通信費 📱, 医療費 🏥, 娯楽 🎮, 衣類 👕
- 収入カテゴリ: 給料 💼, 臨時収入 🎁, 投資 📈, 返金 ↩️, その他 ✨
- 順序フィールド（`order: int`）を持たせる
- Repository IF は Phase 0 でマージ済み

**禁止**: domain / infra / pres 編集禁止、God File 編集禁止。

**作業フロー**: 上と同じ（read → 作成 → build_runner → analyze → 1 コミット → push）。

---

### Leaf: `leaf/category-infra-hive-repo`

`CategoryRepository` の Hive 実装。typeId = 2。
作成ファイル:
- `lib/features/category/infrastructure/models/category_hive_model.dart`
- `lib/features/category/infrastructure/repositories/category_repository_impl.dart`

---

### Leaf: `leaf/exchange-infra-rust-bridge`

これは Phase 1 の Leaf Node 実装です。`.cursor/rules/{core,architecture,rust,bitcoin,security,leaf-node}.mdc` を読んでください。

**目的**: 為替・Bitcoin レート取得を Rust 側に実装し、flutter_rust_bridge で Dart に公開する。

**作成する新規ファイル**:
- `rust/src/api/exchange.rs`（既存なら追記、なければ新規）
- `lib/features/exchange/infrastructure/datasources/exchange_rate_remote_datasource.dart`（Rust 呼び出しラッパ）
- `lib/features/exchange/infrastructure/repositories/exchange_rate_repository_impl.dart`

**実装方針**（`.cursor/rules/bitcoin.mdc` に詳細あり、必読）:
- Rust 側に `fetch_btc_jpy_rate() -> Result<RateSnapshot>` などを実装
- HTTP クライアントは `reqwest`（`features = ["rustls-tls"]`、`default-features = false`）
- タイムアウト 5 秒、3 回まで指数バックオフリトライ
- 1 プロバイダ失敗 → 次のプロバイダにフェイルオーバー
- 60 秒メモリキャッシュ（Rust 側でも Dart 側でもよいが、まずは Dart 側でシンプルに）
- 通信は HTTPS のみ（HTTP は禁止）
- 公開エンドポイントのみ。認証情報は送らない。

**禁止**:
- providers / main.dart / pubspec.yaml の編集（pubspec への dep 追加が必要なら別 Leaf にする or 統合フェーズに回す）
- 他 feature の編集
- Rust 側で `unwrap()` / `panic!()` を本番コードに残す

**作業フロー**:
1. `cargo build --manifest-path rust/Cargo.toml` が通ることを確認
2. `flutter_rust_bridge_codegen generate` で Dart 側のバインディング生成
3. `cargo clippy --manifest-path rust/Cargo.toml -- -D warnings`
4. `fvm flutter analyze`
5. 1 コミット: `feat(exchange): add Rust-side rate fetcher + Dart bridge (leaf)`

---

### 他の Leaf（短縮版）

以下は同じ要領で実装。詳細は `docs/LEAF_NODE_STRATEGY.md` 参照。

| Leaf ブランチ | 主な作成ファイル |
|---|---|
| `leaf/calendar-app-usecases` | `lib/features/calendar/application/usecases/*.dart` |
| `leaf/calendar-infra-repo` | calendar の集計 Repository 実装 |
| `leaf/exchange-app-usecase` | `lib/features/exchange/application/usecases/get_rate_usecase.dart` |
| `leaf/bitcoin-app-usecase` | `lib/features/bitcoin/application/usecases/record_bitcoin_payment_usecase.dart` |
| `leaf/bitcoin-infra-rust-bridge` | Rust 側 Bitcoin 関連の最小実装（MVP では amount 変換のみ） |
| `leaf/nostr-infra-rust-protocol` | **依存元**: NIP-44 暗号化 + イベント生成 + リレー送受信（Rust） |
| `leaf/nostr-infra-dart-repo` | **nostr-infra-rust-protocol のマージ後に開始**: Dart 側ラッパ |
| `leaf/nostr-app-usecases` | sync push / pull / merge UseCase |
| `leaf/settings-app-usecases` | テーマ・通貨・リレー設定 |
| `leaf/settings-infra-hive` | typeId = 3 |

各 Leaf プロンプトは上の 2 つをテンプレートにして自分で作る。**毎回コピペするブランチ名と作成ファイル一覧を間違えない**。

---

## ステップ D: 各 Leaf の PR を作る

各 Leaf 完了後、ターミナル（あるいは GitHub）で PR を作成。

```bash
gh pr create --title "feat(transaction): add CRUD usecases (leaf)" \
             --body "Phase 1 leaf: transaction-app-create-usecase\n\n- 5 UseCase 追加\n- 既存ファイル変更なし\n- analyze: 0 errors" \
             --base main
```

---

## ステップ E: マージ順序（厳守）

Coordinator（あなた = 人間）が main に **1 つずつ** マージします。

**順序**:
1. `leaf/transaction-infra-hive-repo`（他の app-usecases が依存する Repository 実装）
2. `leaf/category-infra-hive-repo`
3. `leaf/transaction-app-create-usecase`
4. `leaf/category-app-usecases`
5. `leaf/exchange-infra-rust-bridge`
6. `leaf/exchange-app-usecase`
7. `leaf/bitcoin-infra-rust-bridge`
8. `leaf/bitcoin-app-usecase`
9. `leaf/nostr-infra-rust-protocol`
10. `leaf/nostr-infra-dart-repo`
11. `leaf/nostr-app-usecases`
12. `leaf/calendar-infra-repo`
13. `leaf/calendar-app-usecases`
14. `leaf/settings-infra-hive`
15. `leaf/settings-app-usecases`

**1 つマージするごとに**:
```bash
git pull --rebase
fvm flutter analyze
cargo build --manifest-path rust/Cargo.toml
```
が全部通ることを必ず確認。通らなければそのマージを revert し、該当 Leaf の作者（= Cursor セッション）に戻って修正。

---

## ステップ F: worktree を片付ける

すべてマージ完了したら:

```bash
git worktree remove ../suito-wt/transaction-app
git worktree remove ../suito-wt/transaction-infra
# ... 全部
git worktree prune
git branch -d leaf/transaction-app-create-usecase
# ... 全部
```

---

## チェックリスト

Phase 1 終了条件:
- [ ] 全 Leaf がマージ済み
- [ ] main で `fvm flutter analyze` エラー 0
- [ ] main で `cargo build --manifest-path rust/Cargo.toml` 成功
- [ ] main で `cargo clippy --manifest-path rust/Cargo.toml -- -D warnings` 警告 0
- [ ] worktree がすべて削除済み
- [ ] 各 Leaf の作成ファイル一覧が docs と一致

完了したら `prompts/04_phase2_presentation.md` へ。
