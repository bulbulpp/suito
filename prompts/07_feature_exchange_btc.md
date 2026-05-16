# 07_feature_exchange_btc.md — 為替 API + Bitcoin 機能の深掘り

## このプロンプトをいつ使うか

- MVP 完了後、取引所 API 周りを本格化させる時
- 表示精度・キャッシュ戦略・障害時挙動を整備する時

## 設計方針（変更不可）

- すべての金額は **整数**（floating-point 禁止）
  - JPY: `int`（円）
  - USD: `int`（セント = 1/100 USD）
  - Bitcoin: `i64`（sat = 1/100,000,000 BTC）
- 公開エンドポイントのみ使用、認証情報は **絶対送らない**
- HTTPS 必須、タイムアウト 5 秒、3 回まで指数バックオフ
- 1 プロバイダ失敗 → 次のプロバイダにフェイルオーバー
- メモリキャッシュ 60 秒、ディスクキャッシュ任意（Hive box `exchange_cache_box`）
- レート取得は **Rust 側** で行い、Dart には数値だけ返す

## 対応する取引所・為替プロバイダ

| 通貨ペア | プロバイダ候補 |
|---|---|
| BTC/JPY | bitFlyer (`/v1/getticker`), Coincheck (`/api/ticker`) |
| BTC/USD | Coinbase (`/v2/prices/BTC-USD/spot`), Kraken (`/0/public/Ticker?pair=XBTUSD`) |
| USD/JPY | exchangerate.host, openexchangerates の無料エンドポイント等 |

**確認必須**: 各 API の **利用規約 / 商用利用条件** を必ず読む。レート制限の存在を前提に **指数バックオフ** を実装する。

## 実装ステップ

### Step 1: Rust 側のプロバイダ抽象化（Leaf 化可）

`leaf/exchange-rust-provider-trait`

`rust/src/exchange/provider.rs`:
```rust
#[async_trait::async_trait]
pub trait RateProvider: Send + Sync {
    fn id(&self) -> &'static str;
    async fn fetch_btc_jpy(&self) -> anyhow::Result<u64>; // satoshi 換算は呼び出し側
    async fn fetch_btc_usd_cents(&self) -> anyhow::Result<u64>;
    async fn fetch_usd_jpy_millis(&self) -> anyhow::Result<u64>; // 1000 倍精度
}
```

各プロバイダ実装は **別ファイル** に。
- `rust/src/exchange/providers/bitflyer.rs`
- `rust/src/exchange/providers/coincheck.rs`
- `rust/src/exchange/providers/coinbase.rs`
- `rust/src/exchange/providers/exchangerate_host.rs`

それぞれ独立 Leaf にできる（並列化）。

### Step 2: フェイルオーバーオーケストレータ

`leaf/exchange-rust-orchestrator`

`rust/src/exchange/orchestrator.rs`:
- `Vec<Arc<dyn RateProvider>>` を保持
- 順番に試行、5 秒タイムアウト、3 回バックオフ
- 全プロバイダ失敗時は `ExchangeError::AllProvidersFailed`

### Step 3: Dart 側 UseCase / Provider

`leaf/exchange-dart-app`

- `GetCurrentRateUseCase(target: Currency)`
- 結果は `RateSnapshot { btcJpy, btcUsdCents, usdJpyMillis, fetchedAt, providerId }`
- Riverpod の `@riverpod` で 60 秒間 keep + auto refresh

### Step 4: UI レート表示バナー

`leaf/exchange-pres-ticker-widget`

カレンダーページ上部に細い帯で:
```
⚡ 1 BTC = ¥X,XXX,XXX  |  $XX,XXX  |  ¥XXX.XX/$  ↻
```
- 古い表示中は数字をグレーに（残時間で薄く）
- `↻` タップで強制更新

### Step 5: Bitcoin 支払い記録の改善

`leaf/bitcoin-app-record-with-snapshot`

- `RecordBitcoinPaymentUseCase` の入力に `BitcoinRecordSnapshot` を必須化
- スナップショットは **取得時点で固定**（後から書き換え禁止）
- 既存の Hive モデルに `snapshot` フィールドが無ければ migration 必要 → **新規 typeId（5）で別 box** に保存し、古いデータは互換アダプタで読む

### Step 6: 詳細ページの再計算表示

過去の取引を開いたとき、「記録時のレート」と「現在のレート」を **両方** 表示。例:
```
0.00250000 BTC （250,000 sat）
記録時: ¥1,250,000 / $8,500.00 （2026-03-15）
現在:   ¥1,310,000 / $9,100.00 （+4.8% / +7.1%）
```

`leaf/bitcoin-pres-detail-page`

## ↓ プロンプト本体 ↓

為替 / Bitcoin 機能を強化する Leaf を 1 つ実装してください。

**今回の Leaf**: [上記 Step 1〜6 から 1 つ選ぶ。例: `leaf/exchange-rust-provider-trait`]

**手順**:
1. `.cursor/rules/{core,architecture,rust,bitcoin,security,leaf-node}.mdc` 必読
2. 自分の worktree のブランチ名を `git branch --show-current` で確認
3. **新規ファイルのみ作成**。既存ファイル編集は最小限（拡張のみ、削除・破壊変更禁止）
4. Rust 側変更があれば:
   - `cargo build --manifest-path rust/Cargo.toml` 成功
   - `cargo clippy --manifest-path rust/Cargo.toml -- -D warnings` 警告 0
   - `cargo test --manifest-path rust/Cargo.toml` パス
   - `flutter_rust_bridge_codegen generate` 実行（Dart 側のバインディング更新）
5. Dart 側変更があれば:
   - `dart run build_runner build --delete-conflicting-outputs`
   - `fvm flutter analyze` エラー 0
   - 該当 feature の `flutter test` パス
6. 1 コミット → push

**禁止事項（厳守）**:
- 浮動小数で金額を扱う（`f64`, `double` 禁止）
- HTTP（`http://`）通信
- API キー / 認証情報の送信
- `unwrap()` / `expect()` を本番 Rust コードに残す
- `print!` / `println!` をコミット（必要なら `tracing`）
- `providers/app_providers.dart` / `main.dart` 編集（Phase 3 統合フェーズで別途）

**プロバイダ追加時の確認**:
- 商用利用 OK の規約か（家計簿アプリは個人利用だが、Zapstore で配布する）
- レート制限の値を把握
- 1 リクエストに渡す User-Agent を `suito/x.y.z` に固定

**完了報告**:
- 追加ファイル一覧
- ベンチ（任意）: フェイルオーバー込み 1 リクエストの p50 / p99
- スクリーンショット（バナーやページの変更があれば）

---

## チェックリスト

- [ ] すべての金額が整数（grep で `f64`, `double` を確認）
- [ ] HTTPS 限定（grep で `http://` を確認）
- [ ] 認証情報を送る箇所がない
- [ ] タイムアウト・リトライ設定が `.cursor/rules/security.mdc` に従っている
- [ ] レート取得失敗時もアプリがクラッシュしない（手動確認: 機内モードで起動）
- [ ] スナップショットは追記のみ。過去レコードの書き換え経路がない
