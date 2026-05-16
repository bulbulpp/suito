# 06_feature_calendar.md — カレンダー機能の深掘り

## このプロンプトをいつ使うか

- MVP（Phase 3 完了）後、カレンダー機能を本格化させる時
- 月跨ぎ・年表示・統計表示など追加したい時

## 設計方針（変更不可）

- 白黒モノクロのまま
- 数字は monospace
- 色での増減区別はせず、形（▲ ▼）と上下の位置で区別
- 月の合計バーは下端固定

## 実装する機能（順序通り）

### 機能 1: 月跨ぎスムーズスワイプ

現状は月切替時に再構築。`PageView.builder` ベースに置換し、左右無限スワイプにする。

**Leaf 候補**:
- `leaf/calendar-pres-pageview-refactor`（presentation のみ）

`MonthGrid` を `PageView` の各ページに割り当てる。**前後 1 ヶ月をプリビルドして体感速度を確保**。

### 機能 2: 日付詳細シート

セルタップで `showModalBottomSheet`。当日の取引リストを表示。

**Leaf 候補**:
- `leaf/calendar-pres-day-detail-sheet`

ファイル:
- `lib/features/calendar/presentation/widgets/day_detail_sheet.dart`
- `lib/features/calendar/presentation/providers/day_transactions_provider.dart`

内容:
- 当日の取引一覧（時刻順）
- 各行: アイコン（カテゴリ） + 金額 + メモ
- 行スワイプで削除（確認モーダル）
- 行タップで編集ページ遷移

### 機能 3: 月統計サマリ

カレンダー上部に折りたたみ可能なサマリ。

**表示項目**（白黒の表のみ）:
- 当月収入合計
- 当月支出合計
- 差し引き（▲ or ▼ 記号付き）
- カテゴリ別支出 Top 3（バーは黒の濃淡）

**Leaf 候補**:
- `leaf/calendar-app-monthly-summary-usecase`（Application 層）
- `leaf/calendar-pres-summary-card`（Presentation 層）

`GetMonthlySummaryUseCase` を Phase 0 と同じ要領で:
1. Domain にエンティティ `MonthlySummary` を追加（**新規ファイル**）
2. Application に UseCase（**新規ファイル**）
3. Presentation に summary_card.dart（**新規ファイル**）
4. CalendarPage への組込のみ統合フェーズで（God File 扱い）

### 機能 4: 年表示モード

年 12 ヶ月分のミニカレンダーをグリッド表示。

**Leaf 候補**:
- `leaf/calendar-pres-year-view-page`

タップで該当月にジャンプ。

## 共通の作業フロー

各機能を独立 Leaf として:
1. **Phase 0 相当**: 必要なら domain に新規 Entity / Failure 追加 → main マージ
2. **Phase 1 相当**: application + infrastructure を並列 Leaf 化
3. **Phase 2 相当**: presentation を Leaf 化
4. **Phase 3 相当**: 統合は 1 セッション

## ↓ プロンプト本体（Cursor に投げる用） ↓

カレンダー機能を強化したい。以下の機能を Leaf Node 戦略に従って実装してください。

**実装する機能**: [上記 1〜4 から 1 つ選んで明記]

**手順**:
1. `.cursor/rules/{core,architecture,flutter-dart,leaf-node}.mdc` と `docs/LEAF_NODE_STRATEGY.md` `docs/FEATURES.md` を読む
2. この機能を **Leaf に分解できるか** 検討して提示（分解しないとコンフリクトが出るならどう分解するか）
3. 分解案を私が承認したら、**最初の Leaf だけ** 実装する
4. 1 Leaf = 1 ブランチ = 1 コミットを守る
5. 既存の `calendar_page.dart` / `app_router.dart` / `providers/` には触らない（必要なら別 Leaf として提案）

**制約**:
- カラー追加禁止（白黒モノクロ厳守）
- 外部カレンダーパッケージ（`table_calendar` 等）追加禁止
- `setState` 中心の StatefulWidget 設計禁止（Riverpod + Consumer）
- `ConsumerWidget` 使用禁止（`StatelessWidget` + `Consumer`）
- 全数値演算は整数（取引金額は `int`、Bitcoin は sat `i64`）

**完了条件**:
- 単体テスト追加
- `fvm flutter analyze` エラー 0
- スクリーンショット 1 枚（リポジトリ外に保存）

---

## チェックリスト

- [ ] 既存の `MonthGrid` / `DayCell` の API は破壊していない
- [ ] 新規ファイルが中心。既存ファイル編集は最小限
- [ ] dark mode / light mode で見栄え確認
- [ ] 1000 件の取引データで FPS 低下なし（手動確認）
