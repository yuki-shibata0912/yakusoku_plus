＃ Yakusoku+

## アプリの概要
Yakusoku+ は、サロン・クリニックなどの予約管理を想定した Web アプリケーションです。

ユーザー認証後に予約の登録・編集・削除を行うことができ、
予約前日にはリマインドメールを自動送信します。

## アプリのスクリーンショット

1. トップページ
<img height="1200" alt="トップページ" src="https://github.com/user-attachments/assets/a4b83415-365d-4000-b965-e4f25607cea2" />

2. ログイン画面
<img height="1200" alt="ログイン画面" src="https://github.com/user-attachments/assets/d46addae-dffa-4e5c-bd40-98cea7815fb3" />

3. 新規登録画面
<img height="1200" alt="新規登録画面" src="https://github.com/user-attachments/assets/fd5212f5-5ee5-44e1-827a-80fecdfcfbc3" />

4. 予約一覧
<img height="1200" alt="予約一覧" src="https://github.com/user-attachments/assets/e90b2044-cab2-4e86-9fb6-43fe3ed1a063" />

5. 予約編集
<img height="1200" alt="予約編集" src="https://github.com/user-attachments/assets/7cd74149-15c5-41f1-8583-736fa00d2a5b" />

6. 削除確認ダイアログ
<img height="1200" alt="削除確認ダイアログ" src="https://github.com/user-attachments/assets/8b507047-f3e9-4d90-b970-bc5b3e8f1907" />


## アプリのURL

## アプリの使い方
1. ユーザー登録・ログイン
2. 予約を登録
3. 予約一覧から編集・削除が可能

## なぜこのアプリを作ったか
予約管理を一元化して、予約忘れを防ぐ仕組みを実装したいと考えたためです。

## 工夫したところ
- Deviseによる認証機能の実装
- ログイン状態によるアクセス制御
- ActionMailerを用いたリマインドメール機能
- CI（GitHub Actions）による自動テスト・Lintの実行

## リマインドメール機能について
予約前日にリマインドメールを送信する機能を実装しています。

開発環境では実際のメール送信は行わず、Railsのログ上で送信内容を確認できるようにしています。

## ER図
<img width="561" height="271" alt="Yakusoku+_ER図" src="https://github.com/user-attachments/assets/f2e9dcf3-0a50-45ca-abbb-3cb68348e078" />

