# 05_phase3_integration.md — Phase 3: 統合（God File は 1 エージェントのみ）

## このプロンプトをいつ使うか

- Phase 2 までの全 Leaf が main にマージ済み
- 個別ページは単体で動くが、**ルーティング・DI・初期化が未配線**の状態
- これから **1 つの Cursor セッション（並列禁止）** で God File を編集して MVP を完成させる

## なぜ並列禁止か

`main.dart` / `app_router.dart` / `providers/app_providers.dart` / `pubspec.yaml` / `Cargo.toml` は **God File**。
複数エージェントが同時に触ると確実にコンフリクトする。Phase 3 は **直列実行・1 エージェント** が鉄則。

---

## 事前確認

```bash
cd ~/path/to/suito
git checkout main && git pull
git worktree list  # 残骸が残っていれば prune
fvm flutter analyze
cargo build --manifest-path rust/Cargo.toml
```

---

## ↓ プロンプト本体 ↓

これは Phase 3（統合フェーズ）です。`.cursor/rules/{core,architecture,flutter-dart,rust,security,leaf-node}.mdc` を全部読んでください。さらに `docs/ARCHITECTURE.md` と `docs/LEAF_NODE_STRATEGY.md` の Phase 3 章を精読してください。

**目的**: Phase 1 / 2 で揃った feature 群を配線して、MVP として起動可能にする。

**触ってよい God File（このセッションでのみ）**:
- `lib/main.dart`
- `lib/app_router.dart`（go_router 設定）
- `lib/providers/app_providers.dart`（DI ルート）
- `pubspec.yaml`（不足する dep があれば追加）
- `rust/Cargo.toml`（不足 crate 追加）
- `lib/core/widgets/app_shell.dart`（ナビゲーションシェル、新規でも可）

**禁止事項**:
- feature ディレクトリ配下の **既存ファイルを変更しない**（バグ修正以外）
- 新規 feature を追加しない
- 「ついでに」リファクタリングしない
- 1 PR に統合以外の関心事を混ぜない

## 作業手順

### Step 1: アプリ起動シーケンスの整理（main.dart）

`main.dart` で以下を順序立てて実行:

```dart
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 1) Rust ライブラリ初期化
  await RustLib.init();

  // 2) Hive 初期化 + adapter 登録
  await Hive.initFlutter();
  Hive.registerAdapter(TransactionHiveModelAdapter());
  Hive.registerAdapter(CategoryHiveModelAdapter());
  // ... 他全部
  await Hive.openBox<TransactionHiveModel>('transactions_box');
  // ... 他 box

  // 3) デフォルトカテゴリ初回投入（既に存在すればスキップ）
  // SeedDefaultCategoriesUseCase を ProviderContainer で 1 回だけ実行

  // 4) Riverpod 起動
  runApp(const ProviderScope(child: SuitoApp()));
}
```

`SuitoApp` は `Consumer` で `appRouterProvider` と `themeModeProvider` を読んで `MaterialApp.router` を返す。

### Step 2: ルーティング（app_router.dart）

go_router でルートを定義。**画面追加ではなく、既に Phase 2 で作られた画面を登録するだけ**:

```
/                    AppShell
  /calendar          CalendarPage
  /transactions      TransactionListPage
  /transactions/new  RecordTransactionPage
  /bitcoin/new       RecordBitcoinPage
  /settings          SettingsPage
  /settings/categories  ManageCategoriesPage
  /settings/relays      RelaysPage
```

ボトムナビ 3 タブ（カレンダー / 取引一覧 / 設定）+ FAB で取引追加。FAB タップ時に「収支」か「Bitcoin」かを ActionSheet で選択。

### Step 3: DI ルート（app_providers.dart）

各 feature の Repository / UseCase を Riverpod で公開。各 feature の Provider は `@riverpod` で生成されているはずなので、ここでは:
- Hive box を渡す Provider
- Repository を構築する Provider
- 他 feature への橋渡し（例: Bitcoin が Exchange の UseCase を内部で使うなら、ここで wiring）

**1 ファイルに収まらない場合は `lib/providers/<feature>_providers.dart` に分割可。ただし全部このセッション内で行う。**

### Step 4: 初回起動チェック

```bash
fvm flutter run -d <android-device>
```
で起動して、最低以下が動くことを目視確認:
1. アプリが起動して空のカレンダーが表示される
2. デフォルトカテゴリが投入されている（取引追加画面で見える）
3. 取引追加 → 保存 → カレンダーの該当日付に金額が反映
4. Bitcoin 支払い追加 → レート確認モーダルが出る（オフラインなら明確にエラー表示）
5. 設定ページが開ける

### Step 5: 軽い統合テスト

`test/integration/smoke_test.dart` を新規作成し、次を確認:
- アプリが起動する
- ルートが解決する
- Provider container がエラーなく構築できる

### Step 6: コミット

**統合は 1 PR・1〜3 コミット**にまとめる:
- `chore(integration): wire up app router and DI`
- `feat(app): initialize Hive boxes and seed default categories`
- `test(integration): add smoke test`

## 完了報告

完了したら以下を報告:
- 編集した God File 一覧（行数差分も）
- `flutter analyze` 結果
- `flutter test` 結果
- 手動確認した動作（チェックリスト形式）
- スクリーンショット 2〜3 枚（**`.gitignore` 済みのフォルダに置く**、リポジトリにコミットしない）

---

## チェックリスト

Phase 3 / MVP 完了条件:
- [ ] アプリが Android 実機で起動する
- [ ] カレンダー / 取引一覧 / 設定 の 3 タブが動く
- [ ] 取引追加 → 保存 → カレンダー反映の一連動作が成功
- [ ] Bitcoin 支払いがレートスナップショット付きで保存される
- [ ] デフォルトカテゴリが初回起動時に投入される
- [ ] `flutter analyze` エラー 0、warning 0
- [ ] `cargo clippy -- -D warnings` 警告 0
- [ ] `flutter test` 全パス
- [ ] PR が 1 つに収まっている

完了したら次は:
- Nostr 同期の有効化: `prompts/08_feature_nostr_sync.md`
- 為替・Bitcoin 機能の深掘り: `prompts/07_feature_exchange_btc.md`
- カレンダー機能の改善: `prompts/06_feature_calendar.md`
