## Yakusoku+

## アプリの概要
Yakusoku+ は、サロン・クリニックなどの予約管理を想定した Web アプリケーションです。

ユーザー認証後に予約の登録・編集・削除を行うことができ、
予約前日にはリマインドメールを自動送信します。

## アプリのスクリーンショット

1. トップページ
<img height="1200" alt="トップページ" src="https://github.com/user-attachments/assets/dc68b732-8439-4fde-a98f-4685e92f1976" />
<img height="1200" alt="トップページ" src="https://github.com/user-attachments/assets/a6a7298d-2914-4080-8516-ee5523d701e5" />

2. ログイン画面
<img height="1200" alt="ログイン画面" src="https://github.com/user-attachments/assets/57eba906-9844-428c-bd1a-677acc9ac991" />

3. 新規登録画面
<img height="1200" alt="新規登録画面" src="https://github.com/user-attachments/assets/bb8b4c78-7c5a-4f0f-905c-8d88548bc17a" />

4. 予約一覧
<img height="1200" alt="予約一覧" src="https://github.com/user-attachments/assets/bfddc2ef-1f7d-41a0-9546-da641354d8f2" />

5. 予約編集
<img height="1200" alt="予約編集" src="https://github.com/user-attachments/assets/f175dbcb-e851-4ad3-8e92-6847bfaae8cd" />

6. 削除確認ダイアログ
<img height="1200" alt="削除確認ダイアログ" src="https://github.com/user-attachments/assets/6d2579a8-c835-4377-af78-0999d45397d0" />


## アプリのURL
https://yakusoku-plus-513351d87129.herokuapp.com/

## アプリの使い方
1. ユーザー登録・ログイン
2. 予約を登録
3. 予約一覧から編集・削除が可能

## テスト用アカウント
以下のアカウントでログインして動作確認ができます。

- メールアドレス：yoyaku@test.com
- パスワード：TestPass123

## なぜこのアプリを作ったか
予約のダブルブッキングや予約忘れといった、実生活で起こりやすい課題を解決するために作成しました。
単に予約を管理するだけでなく、実運用を想定し、「ミスを防ぐ仕組み」を重視しています。

## 工夫したところ
- 予約時間の重複を防ぐため、バリデーションを実装しダブルブッキングを防止
- ユーザー認証（Devise）を導入し、ログイン状態に応じたアクセス制御を実装
- GitHub Actionsを用いて自動テスト・Lintを実行し、コード品質を確認


## ER図
<img width="561" height="271" alt="Yakusoku+_ER図" src="https://github.com/user-attachments/assets/f2e9dcf3-0a50-45ca-abbb-3cb68348e078" />

