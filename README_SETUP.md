# suito 初期セットアップキット

家計簿アプリ「suito」を **Flutter + Rust + Nostr + Bitcoin** で立ち上げるための、Cursor 用ハーネス一式。

参考: [meiso](https://github.com/higedamc/meiso)（Nostr ベース Flutter + Rust + flutter_rust_bridge アプリ）

---

## 全体像 — 何を何のためにやるか

このキットは **添付ドキュメントの「ハーネスエンジニアリング × Leaf Node」を Cursor 上で実装した形** になっている。

| 層 | 目的 | このキットでの実体 |
| --- | --- | --- |
| **ハーネス（入出力の質）** | AI に毎回プロジェクトの前提を理解させる | `.cursor/rules/*.mdc` × 6 ファイル、`docs/*.md` |
| **ハーネス（環境の安全性）** | 機密漏洩・誤操作の防止 | `.cursorignore`、`.gitignore`、ルールの「禁止事項」セクション |
| **ハーネス（人間側）** | 認知負荷を下げる | `prompts/` 配下の **段階別プロンプト** |
| **Leaf Node 戦略** | AI 並列開発の ROI 最大化 | `docs/LEAF_NODE_STRATEGY.md` と Phase 0 から始まるプロンプト |

---

## 実行順序（必ずこの順番で）

### Step 0: 環境準備（Cursor を開く前）

1. **Cursor をインストール**（最新版、0.45+ 必須）
2. **Flutter SDK** をインストール（FVM 推奨）: <https://flutter.dev>
3. **Rust toolchain** をインストール: `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
4. **flutter_rust_bridge_codegen** をインストール: `cargo install flutter_rust_bridge_codegen`
5. **GitHub アカウント**で suito リポジトリを clone:
   ```bash
   git clone https://github.com/bulbulpp/suito.git
   cd suito
   ```
6. **Node.js**（MCP サーバ用、v20+ 推奨）: <https://nodejs.org>

### Step 1: このキットを suito リポジトリに展開

このフォルダの中身を **suito リポジトリのルートにまるごとコピー** する:

```bash
# このキットのファイルを suito リポジトリへ
cp -r suito-setup-kit/.cursor    /path/to/suito/
cp -r suito-setup-kit/docs       /path/to/suito/
cp -r suito-setup-kit/prompts    /path/to/suito/
cp    suito-setup-kit/.cursorignore /path/to/suito/
cp    suito-setup-kit/AGENTS.md  /path/to/suito/
cp    suito-setup-kit/CLAUDE.md  /path/to/suito/
```

そのまま suito に最初のコミット:

```bash
cd /path/to/suito
git add .
git commit -m "chore: initial harness (rules, docs, mcp, prompts)"
git push
```

### Step 2: MCP サーバを設定（環境変数の登録）

`.cursor/mcp.json` は **テンプレートとして配置済み**。API キーが必要なものは環境変数で渡す。

**シェル（macOS/Linux なら `~/.zshrc` か `~/.bashrc`）に追記:**

```bash
# GitHub Personal Access Token (リポジトリへの read/write を fine-grained で)
export GITHUB_PERSONAL_ACCESS_TOKEN="ghp_xxx..."

# Brave Search (Web 検索用。無料枠あり: https://brave.com/search/api/)
export BRAVE_API_KEY="BSA..."
```

> **絶対に `.cursor/mcp.json` にトークンを直接書かない**。リポジトリにコミットされて漏洩する。

シェルを再読込（`source ~/.zshrc`）してから Cursor を起動する。

### Step 3: Cursor を suito フォルダで開いて MCP の接続確認

1. Cursor で `File → Open Folder` から suito を開く
2. `Cmd/Ctrl + Shift + P` → `Cursor Settings: Open` → `Tools & MCP`
3. `context7`, `github`, `filesystem`, `brave-search`, `memory` が **緑のステータス**で表示されるか確認
4. 赤いものがあれば、ターミナルで該当する `npx -y ...` コマンドを直接叩いてエラーを読む

### Step 4: ルールが読まれているか確認

1. Cursor で新しいチャットを開く
2. `@Rules` と打って、`.cursor/rules/` 配下の `.mdc` が全部リストに出るか確認
3. `core.mdc` と `security.mdc` には `alwaysApply: true` が付いているので、毎ターン勝手に注入される

### Step 5: 最初のプロンプトを流す（順序厳守）

`prompts/` フォルダの番号順に、Cursor チャットにコピペして流していく:

| # | ファイル | 目的 | 想定所要時間 |
| - | --- | --- | --- |
| 01 | `01_scaffold.md` | Flutter + Rust のスケルトン生成、依存追加 | 30 分 |
| 02 | `02_phase0_contracts.md` | **Phase 0**: Entity / Repository IF / Error / UseCase I/O の契約定義（並列の土台） | 1〜2 時間 |
| 03 | `03_phase1_parallel_workers.md` | **Phase 1（並列）**: Leaf ごとに別チャットで実装 | 各 1〜3 時間 |
| 04 | `04_phase2_presentation.md` | **Phase 2**: UI / Presentation 層を並列実装 | 各 1〜2 時間 |
| 05 | `05_phase3_integration.md` | **Phase 3**: DI 配線とルーティング（1 エージェントで直列） | 1 時間 |
| 06 | `06_feature_calendar.md` | カレンダー機能 | 機能追加時 |
| 07 | `07_feature_exchange_btc.md` | 取引所 API + Bitcoin sat 換算 | 機能追加時 |
| 08 | `08_feature_nostr_sync.md` | Nostr リレー同期（NIP-44 暗号化） | 機能追加時 |
| 09 | `09_feature_receipt_ocr.md` | レシート OCR（将来機能） | 機能追加時 |

**重要**: Phase 1 の Leaf ごとに **Cursor の新しいチャットウィンドウ**を開き、`git worktree` で物理分離して並列実行する（やり方は `prompts/03_phase1_parallel_workers.md` の冒頭に書いてある）。

---

## ハーネスの構成図（このキット適用後の suito リポジトリ）

```
suito/
├── .cursor/
│   ├── mcp.json                   ← MCP サーバ定義（環境変数でトークン注入）
│   └── rules/
│       ├── core.mdc               ← 常時適用（プロジェクト概要、Leaf Node 5 原則）
│       ├── security.mdc           ← 常時適用（プライバシー・秘密鍵・通信）
│       ├── architecture.mdc       ← 自動添付（Clean Architecture、層順）
│       ├── flutter-dart.mdc       ← *.dart で自動添付
│       ├── rust.mdc               ← *.rs で自動添付
│       ├── nostr.mdc              ← Nostr 関連で AI が判断して呼ぶ
│       ├── bitcoin.mdc            ← Bitcoin/sat 関連で AI が判断して呼ぶ
│       └── leaf-node.mdc          ← Leaf 分解作業時に手動 @leaf-node で呼ぶ
├── docs/
│   ├── ARCHITECTURE.md            ← 全体構成・レイヤー・依存方向
│   ├── SECURITY_PRIVACY.md        ← 脅威モデル・暗号化・鍵管理
│   ├── FEATURES.md                ← 機能仕様（白黒 UI、カレンダー、BTC 等）
│   ├── LEAF_NODE_STRATEGY.md      ← suito 用の Leaf 分解計画（Phase 0/1/2/3）
│   └── ROADMAP.md                 ← MVP → β → 安定版の段階定義
├── prompts/                       ← Cursor チャットにコピペするプロンプト集
│   ├── 01_scaffold.md
│   ├── 02_phase0_contracts.md
│   ├── 03_phase1_parallel_workers.md
│   ├── 04_phase2_presentation.md
│   ├── 05_phase3_integration.md
│   ├── 06_feature_calendar.md
│   ├── 07_feature_exchange_btc.md
│   ├── 08_feature_nostr_sync.md
│   └── 09_feature_receipt_ocr.md
├── .cursorignore                  ← Cursor が読み込まないファイル（秘密・生成物）
├── AGENTS.md                      ← Cursor 以外のエージェント（Claude Code 等）用
├── CLAUDE.md                      ← Claude Code を併用する場合の入り口
└── (Flutter / Rust の通常のプロジェクト構造が以下に生成される)
```

---

## 初心者向けの心構え（重要）

1. **Phase 0 を飛ばさない**。契約（Entity / Repository / Error）を先に決めることで、後の Phase 1〜2 が**コンフリクトなしで並列化できる**。ここをサボると、後で何倍ものデバッグ時間を消費する。

2. **「全部 AI にやらせる」は NG**。AI は **Phase 0 の契約レビュー**、**God File の編集（ルータ・DI）**、**マージ判断**は人間（あなた）が最終承認する役割。

3. **コミットは Leaf 単位で 1 つの関心事**。「ついでに lint も直した」「ついでにフォーマットも変えた」を絶対にやらない。レビュー不能になる。

4. **わからない単語が出たら、すぐ調べる癖**:
   - Riverpod / Hive / freezed → Flutter のエコシステム
   - flutter_rust_bridge → Dart ⇄ Rust の FFI
   - NIP-44 / NIP-51 → Nostr の暗号化・データ型仕様
   - sat (satoshi) → ビットコインの最小単位（1 BTC = 100,000,000 sat）

5. **「AI に任せて壊れたら git reset」**を恐れない。Leaf 単位で worktree を切っているので、捨てるコストは低い。

---

## トラブルシューティング

| 症状 | 原因 | 対処 |
| --- | --- | --- |
| MCP サーバが赤い | Node.js 未インストール / 環境変数未設定 | `node -v` で確認、シェル再起動 |
| ルールが効いていない感じがする | `alwaysApply: true` 漏れ、または globs ミス | チャットで `@core` などと明示参照して挙動を見る |
| Cursor が暴走してファイルを壊す | `.cursorignore` 設定不足 / 権限緩すぎ | 該当ファイルを `.cursorignore` に追加、Settings の Permissions を厳しめに |
| AI が古い API を使う | Context7 MCP が無効 | `.cursor/mcp.json` 確認、または「@context7 flutter_rust_bridge の最新 API を確認して」と明示 |
