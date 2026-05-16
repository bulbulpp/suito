# SECURITY_PRIVACY.md — suito の脅威モデルとプライバシー設計

## 脅威モデル

### 保護対象

1. **家計データ**：金額、カテゴリ、日時、メモ
2. **Nostr 秘密鍵**：nsec / NIP-19 形式
3. **Bitcoin 関連の支払い情報**：金額、当時レート、コメント
4. **レシート画像**（将来機能）

### 想定される攻撃者

| 攻撃者 | 攻撃手法 | 影響 | 対策 |
| --- | --- | --- | --- |
| **物理的な盗難・覗き見** | 端末を盗む / ロック解除中を覗く | データ全閲覧 | OS のロック、Hive 暗号化、画面ブラー |
| **マルウェア** | 端末上で他アプリがデータを読む | 鍵漏洩 | OS Keychain/Keystore、メモリ最小保持 |
| **Nostr リレー運営者** | コンテンツを読む | 家計データ漏洩 | NIP-44 v2 で E2E 暗号化（自分宛て） |
| **取引所 API 提供者** | クライアント側情報を収集 | プロファイリング | 公開エンドポイントのみ、複数取引所ローテーション |
| **ネットワーク経路上の中間者** | 通信を盗聴・改ざん | データ漏洩 | HTTPS、TLS、wss:// 必須 |
| **開発者本人** | バックドア / 追跡コード | プライバシー侵害 | OSS、ビルド再現性、Analytics ゼロ |

### 保護しないもの（明示）

- **メタデータ**：取引「があった」「いつ」「サイズ感」までは Nostr リレーに残る。これは Nostr の構造上の限界
- **量子計算機による将来の解読**：現時点では現実的でないため対策しない（必要に応じて PQC へ移行）
- **OS そのものの侵害**（jailbreak / root 化済み端末）：OS のセキュアストレージに依存しているため

## データ分類と保存場所

| データ | 分類 | 保存場所 | 暗号化 | バックアップ可 |
| --- | --- | --- | --- | --- |
| 取引明細 | 機密 | Hive（ローカル） | AES-256-GCM | 暗号化済みならば可 |
| Nostr 秘密鍵 | 最高機密 | OS Keychain/Keystore | OS + Argon2id | **ユーザー明示操作のみ** |
| 同期データ | 機密 | Nostr リレー | NIP-44 v2 | リレーに分散 |
| 為替・BTC レート | 公開 | メモリのみ | 不要 | 不要 |
| アプリ設定 | 低 | Hive | 部分（必要な項目のみ） | 可 |
| レシート画像（将来） | 機密 | Hive + ファイル | AES-256-GCM | 暗号化済みならば可 |

## 暗号化方針

### 対称鍵暗号

- **アルゴリズム**: AES-256-GCM
- **Nonce**: 96-bit ランダム（毎回新規）
- **AAD**: 適切なコンテキスト情報（feature 識別子等）

### 鍵導出

- **アルゴリズム**: Argon2id
- **パラメータ**: t=3, m=64MB, p=4
- **Salt**: 16 バイト以上の CSPRNG 生成、各鍵で固有
- **ユーザーパスフレーズが必要な場合のみ**（オプション機能として MVP 後に検討）

### 乱数

- **OS の CSPRNG のみ**：
  - Rust: `getrandom::getrandom` or `rand_core::OsRng`
  - iOS: `SecRandomCopyBytes`
  - Android: `SecureRandom`
- **`rand::thread_rng()` を暗号用途に使わない**

### Nostr E2E 暗号化

- **NIP-44 v2 のみ**
- **NIP-04 は使わない**（CBC モード、認証なし、ECB 的弱点）

## 鍵管理

### 秘密鍵のライフサイクル

```
[生成]    OS CSPRNG → secp256k1 私有鍵
   ↓
[保存]    OS Keychain/Keystore に格納
   ↓
[使用]    Rust 側で取り出し → 暗号化／署名処理 → メモリゼロクリア
   ↓
[エクスポート]  ユーザー明示操作のみ → nsec 表示 / QR コード
   ↓
[削除]    ユーザー明示操作のみ → セキュアストレージから削除
```

### メモリ上の保持時間最小化

- Rust 側で `Zeroize` トレイトを使う
- `secrecy::Secret<T>` でラップ
- Dart 側に **生鍵を渡さない**（公開鍵のみ）

### 画面表示時の対策

- **スクリーンショット禁止**：
  - Android: `FLAG_SECURE` を該当画面に設定
  - iOS: OS のタスクスイッチ表示時に画面をブラー
- **クリップボードに長く残さない**：コピー後 60 秒でクリア

## 通信ルール

| プロトコル | 規約 |
| --- | --- |
| **HTTPS** | TLS 1.2 以上必須。証明書ピン留めを段階的に導入 |
| **Nostr** | `wss://` のみ、`ws://` 拒否 |
| **HTTP プレーン** | **禁止**（本番ビルド） |
| **タイムアウト** | 全リクエスト 10 秒 |
| **リトライ** | 最大 3 回、指数バックオフ |

## ユーザー追跡禁止

- **Analytics SDK を入れない**：Google Analytics, Firebase Analytics 等
- **Crashlytics 系を入れない**：Firebase Crashlytics, Sentry 等（クラッシュ情報に個人データが混ざる）
- **広告 SDK を入れない**
- **エラーレポートが必要な場合**：ユーザーが明示操作で「クラッシュレポートを送る」を押した時のみ、匿名化したスタックトレースを送る

## OS のプライバシー機構との連携

### iOS

- **Keychain**：`kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly`（バックアップ対象外）
- **App Privacy Report**：API 呼び出し先を明示
- **App Transport Security**：プレーン HTTP を完全禁止

### Android

- **EncryptedSharedPreferences** / **Android Keystore**：API 23+ で利用
- **Network Security Config**：cleartextTraffic を false に
- **`FLAG_SECURE`** を秘密鍵表示画面に設定

## 取引所 / 為替 API の扱い

### 送信していい情報

- 公開エンドポイントへの GET リクエストのみ
- BTC/JPY、BTC/USD、USD/JPY のレート取得

### 送信してはいけない情報

- ユーザーの取引履歴・残高・氏名・端末識別子
- ユーザーの IP を特定可能化する情報
- カスタムヘッダーでの識別子付与

### プロファイリング対策

- 複数の取引所をランダムにローテーション
- 同じ端末から同じ取引所への問い合わせ頻度を抑制（60 秒キャッシュ）
- User-Agent はライブラリデフォルトのまま（カスタマイズしない）

## OSS / ビルド再現性

- **完全な OSS**（ライセンスは MIT 検討）
- **ビルドスクリプトの透明性**：`generate.sh` 等のシェルスクリプトを最小化
- **依存ライブラリの監査**：`cargo audit`, `pana score`
- **Zapstore 上での署名・検証**

## ログ規約

### 出してよいログ

- アプリの状態遷移（feature 名、画面遷移）
- HTTP リクエストの URL（パスのみ、クエリ・ボディは出さない）
- エラー種別（メッセージはサニタイズ）

### 絶対に出さないログ

- 金額・カテゴリ・メモ等の取引内容
- Nostr 秘密鍵・公開鍵
- ユーザー固有 ID
- 端末識別子

### 本番ビルドでの除去

- Rust: `#[cfg(debug_assertions)]` で囲む or `tracing` のフィルタ
- Dart: `kReleaseMode` チェック / `AppLogger.debug` を no-op に
- `println!` / `print()` 直接呼び出し禁止

## インシデント対応

### 脆弱性発見時

1. 即時 issue を立てる（**非公開**：GitHub Security Advisories）
2. 影響範囲を確認
3. パッチを優先 leaf として開発
4. 公開アナウンス（影響あるバージョン、緩和策）

### 鍵漏洩疑い時

- ユーザーに **新規鍵への移行**を案内
- 既存データの移行手順を提供

## 監査・レビュー

- 暗号関連のコードは **2 人以上のレビュー必須**
- 外部監査は β リリース後に検討
- セキュリティ系の依存は `cargo audit` を CI で常時実行

## 参考

- NIP-44 v2 spec: <https://github.com/nostr-protocol/nips/blob/master/44.md>
- OWASP Mobile Top 10: <https://owasp.org/www-project-mobile-top-10/>
- Argon2 RFC 9106: <https://datatracker.ietf.org/doc/rfc9106/>
