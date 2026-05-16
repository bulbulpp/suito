# LEAF_NODE_STRATEGY.md — suito 用の並列開発分解計画

このドキュメントは、添付された Leaf Node 戦略を **suito 固有のディレクトリ構造とフィーチャー単位** に落とし込んだもの。
原則は `.cursor/rules/leaf-node.mdc` を参照。ここでは「具体的に何をどう分解するか」を示す。

---

## MVP の Feature 一覧と並列度

| Feature | 想定 Leaf 数 | 並列度 |
| --- | --- | --- |
| `transaction` | 約 15 | 高 |
| `category` | 約 8 | 高 |
| `calendar` | 約 7 | 高 |
| `exchange` | 約 6 | 中 |
| `bitcoin` | 約 8 | 中 |
| `nostr_sync` | 約 10 | 中 |
| `settings` | 約 6 | 高 |

**全体で約 60 Leaf**。これを Phase 0 / 1 / 2 / 3 に振り分ける。

---

## Phase 0 — 契約定義（Coordinator のみ）

**目的**: 全 feature の Entity / Repository IF / Failure / UseCase I/O を **新規ファイル**として確定し、コミット。これが Phase 1 以降の並列の土台。

### 成果物（すべて新規ファイル）

```
lib/core/common/
├── usecase.dart                 # UseCase 基底（Either<F, T> 返す）
├── failure.dart                 # Failure 基底（sealed freezed）
└── value_objects/
    ├── money.dart               # Money 型（JPY/USD/SAT）
    ├── currency.dart            # Currency enum
    └── transaction_id.dart      # ID 型

lib/features/transaction/domain/
├── entities/
│   ├── transaction.dart
│   ├── transaction_type.dart    # income/expense
│   └── payment_method.dart      # cash/card/bitcoin/...
├── repositories/
│   └── transaction_repository.dart
├── failures/
│   └── transaction_failure.dart
└── usecases/
    ├── create_transaction_io.dart
    ├── list_transactions_io.dart
    ├── update_transaction_io.dart
    └── delete_transaction_io.dart

lib/features/category/domain/
├── entities/
│   ├── category.dart
│   ├── category_id.dart
│   └── category_kind.dart       # income/expense
├── repositories/
│   └── category_repository.dart
├── failures/
│   └── category_failure.dart
└── usecases/
    ├── list_categories_io.dart
    ├── create_category_io.dart
    └── delete_category_io.dart

lib/features/calendar/domain/
├── entities/
│   ├── daily_summary.dart
│   └── monthly_summary.dart
├── repositories/
│   └── calendar_repository.dart
├── failures/
│   └── calendar_failure.dart
└── usecases/
    ├── get_monthly_summary_io.dart
    └── get_daily_summary_io.dart

lib/features/exchange/domain/
├── entities/
│   ├── exchange_rate.dart
│   └── rate_pair.dart           # BTC_JPY, BTC_USD, USD_JPY
├── repositories/
│   └── exchange_repository.dart
├── failures/
│   └── exchange_failure.dart
└── usecases/
    └── get_rates_io.dart

lib/features/bitcoin/domain/
├── entities/
│   └── bitcoin_record_snapshot.dart
├── repositories/
│   └── bitcoin_repository.dart  # （必要なら）
├── failures/
│   └── bitcoin_failure.dart
└── usecases/
    └── create_bitcoin_record_io.dart

lib/features/nostr_sync/domain/
├── entities/
│   ├── nostr_event.dart
│   ├── relay_info.dart
│   └── sync_status.dart
├── repositories/
│   └── nostr_sync_repository.dart
├── failures/
│   └── nostr_sync_failure.dart
└── usecases/
    ├── sync_to_relays_io.dart
    ├── fetch_from_relays_io.dart
    └── add_relay_io.dart

lib/features/settings/domain/
├── entities/
│   └── app_settings.dart
├── repositories/
│   └── settings_repository.dart
├── failures/
│   └── settings_failure.dart
└── usecases/
    ├── get_settings_io.dart
    └── update_settings_io.dart
```

### Phase 0 のコミット粒度

- 1 つの大きなコミット **「契約定義」** で OK（並列化しないので）
- メッセージ例：
  ```
  feat: Phase 0 contracts (domain layer for transaction/category/calendar/exchange/bitcoin/nostr_sync/settings)
  ```

### Phase 0 完了の判定

- すべての契約ファイルがコンパイル可能（`fvm flutter analyze` でエラー 0）
- `fvm dart run build_runner build` で生成物が出る
- main にマージ済み

---

## Phase 1 — Application + Infrastructure（並列）

**目的**: Phase 0 の契約に基づいて、UseCase 実装と Repository 実装を **新規ファイル**として並列開発。

### Leaf 一覧（並列実行可能、全 25 個程度）

#### transaction feature

| # | Leaf | ブランチ | 編集（新規）ファイル | 依存 |
| - | --- | --- | --- | --- |
| 1 | transaction-app-create | `leaf/transaction-app-create-usecase` | `lib/features/transaction/application/usecases/create_transaction_usecase.dart` | Phase 0 |
| 2 | transaction-app-list | `leaf/transaction-app-list-usecase` | `.../list_transactions_usecase.dart` | Phase 0 |
| 3 | transaction-app-update | `leaf/transaction-app-update-usecase` | `.../update_transaction_usecase.dart` | Phase 0 |
| 4 | transaction-app-delete | `leaf/transaction-app-delete-usecase` | `.../delete_transaction_usecase.dart` | Phase 0 |
| 5 | transaction-infra-hive | `leaf/transaction-infra-hive-repo` | `lib/features/transaction/infrastructure/repositories/hive_transaction_repository.dart`, `.../datasources/transaction_local_datasource.dart` | Phase 0 |
| 6 | transaction-test | `leaf/transaction-app-test` | `test/features/transaction/application/**/*_test.dart` | Phase 0 |

#### category feature

| # | Leaf | ブランチ | 編集ファイル | 依存 |
| - | --- | --- | --- | --- |
| 7 | category-app | `leaf/category-app-usecases` | `lib/features/category/application/usecases/*.dart` | Phase 0 |
| 8 | category-infra | `leaf/category-infra-hive-repo` | `lib/features/category/infrastructure/repositories/hive_category_repository.dart` | Phase 0 |
| 9 | category-test | `leaf/category-app-test` | `test/features/category/**` | Phase 0 |

#### calendar feature

| # | Leaf | ブランチ | 編集ファイル | 依存 |
| - | --- | --- | --- | --- |
| 10 | calendar-app | `leaf/calendar-app-usecases` | `lib/features/calendar/application/usecases/*.dart` | Phase 0, transaction Domain |
| 11 | calendar-infra | `leaf/calendar-infra-repo` | `lib/features/calendar/infrastructure/repositories/calendar_repository_impl.dart` | Phase 0, transaction Domain |
| 12 | calendar-test | `leaf/calendar-app-test` | `test/features/calendar/**` | Phase 0 |

#### exchange feature

| # | Leaf | ブランチ | 編集ファイル | 依存 |
| - | --- | --- | --- | --- |
| 13 | exchange-app | `leaf/exchange-app-usecase` | `lib/features/exchange/application/usecases/get_rates_usecase.dart` | Phase 0 |
| 14 | exchange-infra-rust | `leaf/exchange-infra-rust-bridge` | `rust/src/api/exchange.rs`, `lib/features/exchange/infrastructure/repositories/exchange_repository_impl.dart` | Phase 0 |
| 15 | exchange-test | `leaf/exchange-app-test` | `test/features/exchange/**`, `rust/src/exchange/tests.rs` | Phase 0 |

#### bitcoin feature

| # | Leaf | ブランチ | 編集ファイル | 依存 |
| - | --- | --- | --- | --- |
| 16 | bitcoin-app | `leaf/bitcoin-app-usecase` | `lib/features/bitcoin/application/usecases/create_bitcoin_record_usecase.dart` | Phase 0, transaction Domain |
| 17 | bitcoin-infra-rust | `leaf/bitcoin-infra-rust-bridge` | `rust/src/api/bitcoin.rs`, `lib/features/bitcoin/infrastructure/*` | Phase 0 |
| 18 | bitcoin-test | `leaf/bitcoin-app-test` | `test/features/bitcoin/**`, `rust/src/bitcoin/tests.rs` | Phase 0 |

#### nostr_sync feature

| # | Leaf | ブランチ | 編集ファイル | 依存 |
| - | --- | --- | --- | --- |
| 19 | nostr-app | `leaf/nostr-app-usecases` | `lib/features/nostr_sync/application/usecases/*.dart` | Phase 0 |
| 20 | nostr-infra-rust-protocol | `leaf/nostr-infra-rust-protocol` | `rust/src/api/nostr.rs`, `rust/src/nostr/**` | Phase 0 |
| 21 | nostr-infra-dart-repo | `leaf/nostr-infra-dart-repo` | `lib/features/nostr_sync/infrastructure/repositories/nostr_sync_repository_impl.dart` | Phase 0, nostr-infra-rust-protocol（先にマージ必要） |
| 22 | nostr-test | `leaf/nostr-test` | `test/features/nostr_sync/**`, `rust/src/nostr/tests.rs` | Phase 0 |

#### settings feature

| # | Leaf | ブランチ | 編集ファイル | 依存 |
| - | --- | --- | --- | --- |
| 23 | settings-app | `leaf/settings-app-usecases` | `lib/features/settings/application/usecases/*.dart` | Phase 0 |
| 24 | settings-infra | `leaf/settings-infra-hive` | `lib/features/settings/infrastructure/repositories/hive_settings_repository.dart` | Phase 0 |
| 25 | settings-test | `leaf/settings-app-test` | `test/features/settings/**` | Phase 0 |

### Phase 1 並列実行の手順

```bash
# メインブランチに Phase 0 がマージされている前提

# worktree で物理分離
git worktree add ../suito-wt/leaf-transaction-app  -b leaf/transaction-app-create-usecase
git worktree add ../suito-wt/leaf-transaction-infra -b leaf/transaction-infra-hive-repo
git worktree add ../suito-wt/leaf-exchange-rust    -b leaf/exchange-infra-rust-bridge
# ... (他の Leaf も同様)

# 別 Cursor ウィンドウで各 worktree を開く
cursor ../suito-wt/leaf-transaction-app
cursor ../suito-wt/leaf-transaction-infra
cursor ../suito-wt/leaf-exchange-rust
```

各ウィンドウで `prompts/03_phase1_parallel_workers.md` を流す。

### Phase 1 マージ順序

依存関係の内側から：

1. **transaction-infra-hive** （他 feature が依存）
2. **category-infra**
3. **transaction-app-*** (UseCase 全部)
4. **category-app**
5. **exchange-infra-rust** → **exchange-app**
6. **bitcoin-infra-rust** → **bitcoin-app**
7. **nostr-infra-rust-protocol** → **nostr-infra-dart-repo** → **nostr-app**
8. **calendar-infra** → **calendar-app**
9. **settings-infra** → **settings-app**
10. テスト系（並列で安全）

各マージ後に `fvm flutter analyze` + `fvm flutter test` 通過を確認。

---

## Phase 2 — Presentation（並列）

**目的**: UI 層を新規ファイルとして並列実装。

### Leaf 一覧

#### transaction presentation

| # | Leaf | ブランチ | 編集ファイル |
| - | --- | --- | --- |
| 26 | transaction-pres-list-page | `leaf/transaction-pres-list-page` | `lib/features/transaction/presentation/pages/transaction_list_page.dart` |
| 27 | transaction-pres-edit-page | `leaf/transaction-pres-edit-page` | `lib/features/transaction/presentation/pages/transaction_edit_page.dart` |
| 28 | transaction-pres-widgets | `leaf/transaction-pres-widgets` | `lib/features/transaction/presentation/widgets/*.dart`（複数の新規ファイル） |
| 29 | transaction-pres-provider | `leaf/transaction-pres-provider` | `lib/features/transaction/presentation/providers/transaction_provider.dart` |

#### category presentation

| # | Leaf | ブランチ | 編集ファイル |
| - | --- | --- | --- |
| 30 | category-pres-page | `leaf/category-pres-page` | `lib/features/category/presentation/pages/category_management_page.dart` |
| 31 | category-pres-widgets | `leaf/category-pres-widgets` | `lib/features/category/presentation/widgets/*.dart` |
| 32 | category-pres-provider | `leaf/category-pres-provider` | `lib/features/category/presentation/providers/category_provider.dart` |

#### calendar presentation

| # | Leaf | ブランチ | 編集ファイル |
| - | --- | --- | --- |
| 33 | calendar-pres-page | `leaf/calendar-pres-page` | `lib/features/calendar/presentation/pages/calendar_page.dart` |
| 34 | calendar-pres-widgets | `leaf/calendar-pres-widgets` | `lib/features/calendar/presentation/widgets/{calendar_cell.dart, monthly_summary_card.dart}` |
| 35 | calendar-pres-provider | `leaf/calendar-pres-provider` | `lib/features/calendar/presentation/providers/calendar_provider.dart` |

#### exchange / bitcoin / nostr_sync / settings presentation

それぞれ同じ要領で 3〜4 Leaf に分解（page, widgets, provider, test）。

### Phase 2 マージ順序

- Presentation は **God File を触らない**前提で、ほぼどの順でもマージ可能
- ただし共通ウィジェット（`lib/core/widgets/`）に依存する Leaf は **共通側を先にマージ**
- テストは任意のタイミング

---

## Phase 3 — 統合（1 エージェント直列）

**God File 編集を集約**。並列化しない。

### 編集対象（God File）

```
lib/main.dart                          # 起動、Hive 初期化、Provider Scope
lib/core/routing/app_router.dart       # go_router のルート定義
lib/providers/app_providers.dart       # トップレベル Provider（Repository, UseCase 配線）
pubspec.yaml                           # 必要な依存を追加
rust/src/lib.rs                        # Rust の公開 API 集約
flutter_rust_bridge.yaml               # FFI 設定
```

### 作業内容

1. 各 feature の Repository / UseCase を `app_providers.dart` で DI 配線
2. `app_router.dart` に全ページのルートを追加
3. `main.dart` で Hive 初期化、ProviderScope、テーマ適用
4. 統合テスト実行
5. 動作確認

### コミット粒度

- 1 つの「Phase 3 統合」コミット で OK（直列なので）
- メッセージ例：
  ```
  feat: Phase 3 integration (DI wiring, routing, main entry)
  ```

---

## 機能追加時のミニ Phase 0/1/2/3

MVP 後の機能追加（例: レシート OCR）も同じパターンで:

```
Phase 0: receipt_ocr/domain/* を新規作成、契約定義
Phase 1: receipt_ocr/application + infrastructure を新規 Leaf で並列
Phase 2: receipt_ocr/presentation を新規 Leaf で並列
Phase 3: app_providers と app_router に追加（1 エージェント）
```

---

## チェックリスト（Phase 開始前に毎回確認）

### Phase 0 開始前

- [ ] 機能仕様（FEATURES.md）に該当機能が記載されている
- [ ] アーキテクチャ図（ARCHITECTURE.md）に整合する
- [ ] セキュリティ要件（SECURITY_PRIVACY.md）と衝突しない
- [ ] 既存 Entity と命名・型が衝突しない

### Phase 1 開始前

- [ ] Phase 0 のすべての契約が `fvm flutter analyze` でエラーなく通る
- [ ] Phase 0 のコミットが main にマージ済み
- [ ] worktree の準備完了
- [ ] Leaf 同士のファイル直交性を `git diff --name-only` で確認

### Phase 2 開始前

- [ ] Phase 1 のすべての Leaf がマージ済み
- [ ] テストが全て通る
- [ ] 共通ウィジェット（`lib/core/widgets/`）の準備完了

### Phase 3 開始前

- [ ] Phase 1 / 2 のすべての Leaf がマージ済み
- [ ] 1 エージェント（人間 + AI）で集中して作業できる時間を確保
