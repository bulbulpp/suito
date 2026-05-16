# 09_feature_receipt_ocr.md — レシート OCR 機能（将来実装）

## このプロンプトをいつ使うか

- MVP + Nostr 同期が安定した後の **拡張機能** として実装
- 「カメラでレシートを撮ると、金額・店名・日付が自動入力される」体験を作る

## 設計方針（プライバシー最優先・変更不可）

- **オンデバイス処理のみ**。クラウド OCR / 外部 API は **絶対に使わない**
  - iOS: `Vision` フレームワーク（`VNRecognizeTextRequest`）
  - Android: ML Kit Text Recognition（オンデバイスモデル）
- 画像は **ローカルにも保存しない**（OCR 完了後は即破棄、サムネイル不要）
- ユーザーが明示的に「保存」を選んだ場合のみ、暗号化してローカル保存
- カメラ権限は OCR 実行時のみ要求、常時取得しない
- ギャラリーアクセスは UI で明示的にユーザーが選んだファイルのみ

## アーキテクチャ

```
[Camera/Picker] → [画像ファイル (一時)] → [OCR (オンデバイス)]
                                                │
                                                ▼
                                       [テキスト抽出結果]
                                                │
                                                ▼
                              [パーサ (金額・日付・店名)]
                                                │
                                                ▼
                            [取引入力フォームに pre-fill]
                                                │
                                                ▼
                              [ユーザーが確認・編集して保存]
                                                │
                                                ▼
                                  [画像ファイル削除]
```

**重要**: OCR の結果は **必ずユーザー確認を経て保存**。自動で取引追加しない。

## 実装の Leaf 分解

| Leaf | 役割 | 主な作成ファイル |
|---|---|---|
| `leaf/receipt-ocr-platform-channel-ios` | iOS Vision の呼び出し（Swift / Objective-C） | `ios/Runner/ReceiptOcrPlugin.swift` + Dart Platform Channel |
| `leaf/receipt-ocr-platform-channel-android` | Android ML Kit 呼び出し（Kotlin） | `android/.../ReceiptOcrPlugin.kt` + Dart Platform Channel |
| `leaf/receipt-ocr-dart-bridge` | プラットフォームチャネルの Dart ラッパ | `lib/features/receipt_ocr/infrastructure/datasources/native_ocr_datasource.dart` |
| `leaf/receipt-ocr-parser` | OCR テキストから金額・日付・店名を抽出するパーサ | `lib/features/receipt_ocr/application/parsers/receipt_text_parser.dart` |
| `leaf/receipt-ocr-domain` | Entity / Failure / UseCase IO 型 | `lib/features/receipt_ocr/domain/**` |
| `leaf/receipt-ocr-app-usecase` | `ScanReceiptUseCase` | `lib/features/receipt_ocr/application/usecases/scan_receipt_usecase.dart` |
| `leaf/receipt-ocr-pres-camera-page` | カメラ撮影 UI | `lib/features/receipt_ocr/presentation/pages/camera_page.dart` |
| `leaf/receipt-ocr-pres-review-page` | 抽出結果のレビュー＆編集 UI | `lib/features/receipt_ocr/presentation/pages/review_page.dart` |

## パーサの責務

レシートのテキストから以下を抽出:

1. **合計金額**: 「合計」「Total」「お会計」直後の数字、または `\d{1,3}(,\d{3})*` の最大値
2. **日付**: `YYYY/MM/DD`, `YYYY-MM-DD`, `MM/DD`, 和暦変換も検討
3. **店名**: 上部数行のうち、固有名詞っぽいもの（曖昧、ユーザー編集前提）
4. **カテゴリ推定**: 店名から食費 / 交通費 / 日用品を **推定だけ**（自動採用しない）

**重要**: パーサは **完全には信用しない**。ユーザーが必ず確認するフロー。

## ↓ プロンプト本体 ↓

レシート OCR 機能の Leaf を 1 つ実装します。

**今回の Leaf**: [上の表から 1 つ選ぶ]

**手順**:
1. `.cursor/rules/{core,architecture,flutter-dart,security,leaf-node}.mdc` と `docs/SECURITY_PRIVACY.md` を必読
2. 自分の worktree のブランチを確認
3. **オンデバイス OCR 限定**。Tesseract.js / クラウド API は禁止
4. 新規ファイルのみ作成
5. テスト:
   - パーサ Leaf には **多様なレシート文字列のサンプルテスト** 必須
   - 個人情報を含む実物レシート文字列は **テストに混入させない**（合成データで作る）

**禁止事項（厳守）**:
- クラウド OCR（Google Vision API, Azure, AWS Textract 等）の利用
- 画像のリモート送信
- OCR 完了前に「分析中の画像のサムネイル」を Crashlytics 風に外部送信
- カメラ権限の常時保持
- レシート画像をデフォルトで永続保存（保存はユーザー明示選択時のみ、Hive box 暗号化必須）
- 抽出データのリモート同期（Nostr に流すのは **取引データのみ**、レシート画像は流さない）

**iOS Vision を使う際の注意**:
- `VNRecognizeTextRequest.recognitionLevel = .accurate`
- `recognitionLanguages` に `ja-JP`, `en-US` を含める
- `usesLanguageCorrection = true`

**Android ML Kit を使う際の注意**:
- 日本語対応モデル（Korean+Japanese model）を使う
- 初回ダウンロードが必要なモデルは、**Wi-Fi 接続時のみ自動 DL**（ユーザー設定で）

**完了報告**:
- 追加ファイル一覧
- 権限要求のタイミング（コードで確認）
- 画像ライフサイクル（生成 → OCR → 破棄）のログ確認
- スクリーンショット（UI 変更時、レシートの内容は合成データ）

---

## チェックリスト

- [ ] 画像がアプリのドキュメントディレクトリに **意図せず残らない**
- [ ] OCR 処理は完全にオフラインで動く（機内モードで確認）
- [ ] カメラ権限・ストレージ権限は OCR 実行時にのみ要求
- [ ] 抽出結果は必ずユーザー確認画面を経由
- [ ] パーサ単体テストが多言語・多フォーマットをカバー
- [ ] レシート画像が `.gitignore` 済みの一時ディレクトリにのみ書かれる
- [ ] レシート画像が Nostr / リモートに送信されない（grep で確認）

---

## 将来の拡張アイデア（実装しない、メモ）

- 領収書を **インボイス番号** で識別して経費計上向けに分類
- **クレジットカード明細 CSV** を取り込んで紐付け（オンデバイスでマッチング）
- 飲食店レシートの **品目別** 抽出（高度な構造化）

→ いずれも実装する場合は別途プロンプトを作成し、Leaf Node 戦略で分解する。
