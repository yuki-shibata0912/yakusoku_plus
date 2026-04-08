## Yakusoku+

## アプリの概要
Yakusoku+ は、サロン・クリニックなどの予約管理を想定した Web アプリケーションです。

ユーザー認証後に予約の登録・編集・削除を行うことができ、
予約前日にはリマインドメールを自動送信します。

## アプリのスクリーンショット

1. トップページ
<img height="1200" alt="トップページ" src="https://github.com/user-attachments/assets/dc68b732-8439-4fde-a98f-4685e92f1976" />

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
予約管理を一元化して、予約忘れを防ぐ仕組みを実装したいと考えたためです。

## 工夫したところ
- Deviseによる認証機能の実装
- ログイン状態によるアクセス制御
- ActionMailerを用いたリマインドメール機能
- CI（GitHub Actions）による自動テスト・Lintの実行

## リマインドメール機能について
予約前日にリマインドメールを送信する機能を実装しています。開発環境では 'rails runner' を用いて送信確認を行いました。

本番環境では cron 等の定期実行機構を利用する予定です。

開発環境では実際のメール送信は行わず、Railsのログ上で送信内容を確認できるようにしています。

## ER図
<img width="561" height="271" alt="Yakusoku+_ER図" src="https://github.com/user-attachments/assets/f2e9dcf3-0a50-45ca-abbb-3cb68348e078" />

