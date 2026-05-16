# ROADMAP.md — suito 開発マイルストーン

## v0.0.x — セットアップフェーズ

**目的**: ハーネス整備、ビルド環境確立

- [x] `.cursor/rules/*.mdc` 配置
- [x] `.cursor/mcp.json` 配置
- [x] `docs/*.md` ドラフト
- [x] `prompts/*.md` 配置
- [ ] Flutter プロジェクト初期化（`flutter create`）
- [ ] Rust ワークスペース初期化
- [ ] flutter_rust_bridge セットアップ
- [ ] 「Hello from Rust」が Flutter から呼べる
- [ ] CI（GitHub Actions）で `flutter test` と `cargo test` が走る

→ プロンプト: `prompts/01_scaffold.md`

## v0.1.0 — Phase 0 契約定義

**目的**: 全 feature の Domain 層を確定し、並列開発の土台にする

- [ ] `transaction` Domain
- [ ] `category` Domain
- [ ] `calendar` Domain
- [ ] `exchange` Domain
- [ ] `bitcoin` Domain
- [ ] `nostr_sync` Domain
- [ ] `settings` Domain
- [ ] `lib/core/common/` (UseCase / Failure / Money / Currency)

完了基準: `fvm flutter analyze` がエラー 0、契約のみマージ済み

→ プロンプト: `prompts/02_phase0_contracts.md`

## v0.2.0 — Phase 1: Application + Infrastructure（並列）

**目的**: UseCase と Repository 実装

- [ ] transaction（Application）
- [ ] transaction（Infrastructure: Hive）
- [ ] category（Application + Infrastructure）
- [ ] calendar（Application + Infrastructure）
- [ ] exchange（Application + Infrastructure: Rust）
- [ ] bitcoin（Application + Infrastructure: Rust）
- [ ] nostr_sync（Application + Infrastructure: Rust + Dart）
- [ ] settings（Application + Infrastructure: Hive）

→ プロンプト: `prompts/03_phase1_parallel_workers.md`

## v0.3.0 — Phase 2: Presentation（並列）

**目的**: 白黒 UI の実装

- [ ] テーマ定義（`lib/core/theme/`）
- [ ] transaction（List, Edit, Widget, Provider）
- [ ] category（管理画面）
- [ ] calendar（月表示）
- [ ] exchange（レート表示ウィジェット）
- [ ] bitcoin（記録フォーム）
- [ ] nostr_sync（設定 UI）
- [ ] settings（メイン設定画面）
- [ ] アプリのトップナビゲーション（タブ or ドロワー）

→ プロンプト: `prompts/04_phase2_presentation.md`

## v0.4.0 — Phase 3: 統合 → MVP

**目的**: DI 配線、ルーティング、動作確認、Android で動く

- [ ] `app_providers.dart` で全 Provider 配線
- [ ] `app_router.dart` で全画面ルート登録
- [ ] `main.dart` で初期化処理
- [ ] Android 実機でビルド成功
- [ ] 主要シナリオ E2E テスト（取引追加→カレンダー表示→削除）
- [ ] パフォーマンス測定（起動時間、画面遷移）

→ プロンプト: `prompts/05_phase3_integration.md`

## v0.5.0 — Nostr 同期実装完了

- [ ] 鍵生成 / インポート フロー
- [ ] 取引データの NIP-44 暗号化
- [ ] 複数リレーへの並列送信
- [ ] 他端末からの取得・復号化
- [ ] 競合解決（タイムスタンプベース）
- [ ] リレー管理 UI

→ プロンプト: `prompts/08_feature_nostr_sync.md`

## v0.6.0 — Bitcoin + 取引所レート

- [ ] 公開取引所 API（複数）からレート取得
- [ ] 60 秒キャッシュ
- [ ] BTC 支払いの sat / JPY / USD 同時表示
- [ ] BTC 取引時に当時レート保存
- [ ] レート表示ウィジェット（常時）

→ プロンプト: `prompts/07_feature_exchange_btc.md`

## v0.7.0 — UX 改善 + 多言語

- [ ] 楽観的 UI 更新
- [ ] エラーハンドリング統一（SnackBar / ダイアログ）
- [ ] 日本語 / 英語ローカリゼーション
- [ ] ダークモード
- [ ] アプリロック（PIN / 生体認証）

## v0.8.0 — Zapstore 公開準備

- [ ] アプリアイコン
- [ ] スクリーンショット
- [ ] `zapstore.yaml` 設定
- [ ] 署名キー管理
- [ ] β リリース告知（Nostr）

→ Zapstore リリースガイド（meiso の `docs/ZAPSTORE_RELEASE_GUIDE_JA.md` を参考）

## v1.0.0 — 安定版リリース

- [ ] バグ修正
- [ ] パフォーマンスチューニング
- [ ] セキュリティレビュー
- [ ] ドキュメント整備

## v1.x — レシート OCR

- [ ] カメラ起動 → 画像取得
- [ ] オンデバイス OCR（iOS Vision / Android ML Kit）
- [ ] 解析（金額、日付、店名、品目）
- [ ] 自動入力 → ユーザー確認
- [ ] 暗号化保存

→ プロンプト: `prompts/09_feature_receipt_ocr.md`

## v2.x — 拡張機能（候補）

- 集計・分析ダッシュボード
- 予算管理
- BIP-21 / Lightning invoice 読み取り
- iOS 対応
- Desktop / Web 対応
- Amber 連携（NIP-55、Android）
- Multi-Layer Security: MLS グループ機能（家族での共有家計簿）

## マイルストーン依存関係

```
v0.0.x (setup)
   ↓
v0.1.0 (Phase 0 contracts)
   ↓
v0.2.0 (Phase 1 parallel) ←─── ここで並列度最大
   ↓
v0.3.0 (Phase 2 parallel) ←─── ここで並列度最大
   ↓
v0.4.0 (Phase 3 integration: MVP)
   ↓
v0.5.0 / v0.6.0 (機能追加、並列可能)
   ↓
v0.7.0 (UX)
   ↓
v0.8.0 (Zapstore 公開準備)
   ↓
v1.0.0 (stable)
   ↓
v1.x / v2.x (拡張)
```

## 各リリースの判定基準

| バージョン | 判定基準 |
| --- | --- |
| v0.x | 機能未完成。開発者・テスター向け |
| v1.0 | 全 MVP 機能動作、クラッシュ < 1%、主要シナリオ E2E pass |
| v1.x | 機能追加。後方互換維持 |
| v2.x | 大きな変更（マイグレーション含む）|
