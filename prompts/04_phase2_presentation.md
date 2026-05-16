# 04_phase2_presentation.md — Phase 2: Presentation 層を並列実装

## このプロンプトをいつ使うか

- Phase 1 が完了し、Application / Infrastructure がすべて main にマージ済み
- これから **画面・ウィジェット・Provider** を並列で実装する

## Phase 2 の特徴

- Presentation 層も「**feature ごと**」「**ページ単位**」で Leaf 化可能
- ただし `providers/app_providers.dart` のような共有 Provider ツリーは **Phase 3 で 1 エージェントだけが触る**
- ここでは各 feature 配下に **feature-scoped な Provider** を作るだけにとどめる

## 並列化する Leaf 一覧（推奨）

| Leaf ブランチ | 内容 |
|---|---|
| `leaf/transaction-pres-record-page` | 取引入力ページ |
| `leaf/transaction-pres-list-page` | 取引一覧ページ |
| `leaf/transaction-pres-providers` | feature-scoped Riverpod Provider |
| `leaf/calendar-pres-calendar-page` | 月カレンダー（収支表示） |
| `leaf/calendar-pres-day-detail-sheet` | 日付タップ時の詳細シート |
| `leaf/category-pres-picker-widget` | カテゴリ選択 widget |
| `leaf/category-pres-manage-page` | カテゴリ管理ページ |
| `leaf/exchange-pres-rate-banner` | 為替表示バナー widget |
| `leaf/bitcoin-pres-record-page` | Bitcoin 支払い入力（レート確認モーダル付き） |
| `leaf/settings-pres-settings-page` | 設定ページ |
| `leaf/settings-pres-relays-page` | Nostr リレー設定ページ |
| `leaf/core-pres-theme` | 白黒テーマ定義（`lib/core/theme/`） |

---

## ステップ A: worktree 準備

```bash
cd ~/path/to/suito
git checkout main && git pull
git worktree add ../suito-wt/transaction-pres-record  -b leaf/transaction-pres-record-page
git worktree add ../suito-wt/calendar-pres            -b leaf/calendar-pres-calendar-page
git worktree add ../suito-wt/core-pres-theme          -b leaf/core-pres-theme
# ...必要なだけ
```

---

## ステップ B: 各 Leaf プロンプト

### Leaf: `leaf/core-pres-theme`（**最初に単独で完了させる**。他の Leaf が依存する）

これは Phase 2 の Leaf です。`.cursor/rules/{core,architecture,flutter-dart}.mdc` と `docs/FEATURES.md` のデザイン章を読んでください。

**目的**: 白黒基調のテーマ定義を `lib/core/theme/` に作る。

**作成ファイル**:
- `lib/core/theme/app_colors.dart`（`#FFFFFF`, `#000000`, gray 5 段階）
- `lib/core/theme/app_typography.dart`（sans-serif + monospace 数字）
- `lib/core/theme/app_theme.dart`（`ThemeData light()`, `ThemeData dark()` を返す）
- `lib/core/theme/app_spacing.dart`（4/8/16/24/32 のリテラル）

**実装方針**:
- ライト = 白背景 + 黒文字、ダーク = 黒背景 + 白文字、**色相は使わない**
- アクセントは形（▲ ▼ ⚡ ₿）と濃淡のみ
- `useMaterial3: true`、`scaffoldBackgroundColor` を厳密に指定
- 角丸は最小限（4px）。ボタンは矩形寄り

**禁止**:
- `providers/`, `main.dart`, `app_router.dart` 編集
- 既存 feature 編集
- 色相付きカラーの導入

**コミット**: `feat(theme): add monochrome theme tokens (leaf)`

---

### Leaf: `leaf/transaction-pres-record-page`

これは Phase 2 の Leaf です。`.cursor/rules/{core,architecture,flutter-dart,security,leaf-node}.mdc` を読んでください。

**前提**: `leaf/core-pres-theme` が main にマージ済み。

**作成ファイル**:
- `lib/features/transaction/presentation/pages/record_transaction_page.dart`
- `lib/features/transaction/presentation/widgets/amount_input.dart`（金額入力。整数のみ、桁区切り表示）
- `lib/features/transaction/presentation/widgets/category_chip_row.dart`
- `lib/features/transaction/presentation/widgets/payment_type_toggle.dart`（収入/支出）
- `lib/features/transaction/presentation/providers/record_form_provider.dart`（feature-scoped、@riverpod）

**実装方針**:
- `StatelessWidget` + `Consumer` を使う。**`ConsumerWidget` 禁止**（meiso 流儀）
- 金額入力は `TextField` + `inputFormatters` で整数のみ。表示は 3 桁区切り、内部値は `int`
- 通貨は JPY 固定（MVP）。USD / sat は別ページ（Bitcoin Leaf）
- 保存ボタン押下 → `CreateTransactionUseCase` 呼び出し → 成功時は前画面に戻る
- エラー時はスナックバーで「保存できませんでした」（具体的エラー文言は出さない＝プライバシー）

**禁止**:
- `providers/app_providers.dart` 編集
- `app_router.dart` 編集（ルート登録は Phase 3）
- ネットワーク通信
- `print` / `debugPrint` を本番コードに残す（必要なら `AppLogger`）

**コミット**: `feat(transaction): add record transaction page (leaf)`

---

### Leaf: `leaf/calendar-pres-calendar-page`

**前提**: `leaf/core-pres-theme` マージ済み、`leaf/calendar-app-usecases` マージ済み。

**作成ファイル**:
- `lib/features/calendar/presentation/pages/calendar_page.dart`
- `lib/features/calendar/presentation/widgets/month_grid.dart`（自前実装。外部カレンダー pkg は使わない）
- `lib/features/calendar/presentation/widgets/day_cell.dart`（日付 + 収入合計 + 支出合計 を 2 行で表示）
- `lib/features/calendar/presentation/providers/calendar_state_provider.dart`

**実装方針**:
- 月表示。左右スワイプで前月・翌月
- 各セルに当日の収入合計（▲ 記号 + 数字）と支出合計（▼ 記号 + 数字）を表示
- 数字は monospace
- セルタップ → 日付詳細シート（別 Leaf）を `showModalBottomSheet`
- 月の合計バーをページ下部に表示

**禁止**: `flutter_calendar_*` 系の外部パッケージ追加。色を増やさない。

**コミット**: `feat(calendar): add monthly calendar with daily balance (leaf)`

---

### Leaf: `leaf/bitcoin-pres-record-page`

**前提**: theme + exchange/bitcoin の app/infra 全部マージ済み。

**作成ファイル**:
- `lib/features/bitcoin/presentation/pages/record_bitcoin_page.dart`
- `lib/features/bitcoin/presentation/widgets/sat_input.dart`（整数 sat 入力）
- `lib/features/bitcoin/presentation/widgets/rate_confirmation_modal.dart`
- `lib/features/bitcoin/presentation/providers/bitcoin_record_form_provider.dart`

**実装方針**:
- sat 入力（整数のみ）→ 取得済みレートで JPY / USD 換算値をリアルタイム表示
- 保存ボタン押下 → レート確認モーダルを表示（**この瞬間のスナップショットを保存する旨を明示**）
- 確認後 `RecordBitcoinPaymentUseCase` 呼び出し
- スナップショットは `BitcoinRecordSnapshot`（Phase 0 で定義済み）

**禁止**: floating-point で sat / 通貨計算をしない（整数のみ）。

**コミット**: `feat(bitcoin): add bitcoin payment record page with rate snapshot (leaf)`

---

### 他の Phase 2 Leaf

同じテンプレートで:
- `leaf/transaction-pres-list-page`: 一覧表示。検索・フィルタは MVP では最小
- `leaf/category-pres-picker-widget`: ボトムシートでカテゴリ選択
- `leaf/category-pres-manage-page`: カテゴリ追加・削除・並び替え
- `leaf/exchange-pres-rate-banner`: ヘッダ用ティッカー widget
- `leaf/settings-pres-settings-page`: テーマ切り替え・通貨・リレー設定への遷移
- `leaf/settings-pres-relays-page`: リレー URL 追加・削除・接続テスト

---

## ステップ C: マージ順

1. `leaf/core-pres-theme`（**最優先**、他が依存）
2. category-pres-* （他から widget として使われる）
3. transaction-pres-*
4. calendar-pres-*
5. exchange-pres-rate-banner
6. bitcoin-pres-record-page
7. settings-pres-*

毎回:
```bash
git pull --rebase
fvm flutter analyze
fvm flutter test test/features/<...>/  # 該当 feature だけ
```

---

## ステップ D: チェックリスト

Phase 2 終了条件:
- [ ] 全 Phase 2 Leaf マージ済み
- [ ] `fvm flutter analyze` エラー 0
- [ ] 各ページが単体で `MaterialApp(home: ThePage())` で開ける（手動確認）
- [ ] `app_router.dart` / `app_providers.dart` には **まだ手を入れていない**
- [ ] ダークモード切替時に全ページが反転して見える

完了したら `prompts/05_phase3_integration.md` へ。
