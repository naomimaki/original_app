# README まにゅなびについて


## 概要
  個人経営の飲食店向け情報共有アプリです。
  シフトや、お店での起こったこと、作業手順等共有すべき事は多くあります。
  特にマニュアルに関しては作成するのには時間もコストもかかるため二の足を踏んでいた方も多いのではないでしょうか？

  そういった煩わしさを一気に解消するのがこのまにゅなびというサービスです。
  会員登録をすれば画像を添付したマニュアルを作成することが簡単にできます。
  その他シフトや連絡事項もこのアプリで投稿・管理が可能です。

## URL

## テスト用アカウント
 a@a / PW:123456qwe
 
## 目指した課題解決
  個人営業の飲食店の場合、マニュアルがなくルールの共有に困ることがあります。
  そのため、スタッフ間で認識が食い違い不要なトラブル・離職につながる可能性があります。
  そういった行き違いを防ぐ意味でもマニュアルは重要です。
  このまにゅなびを利用することで店舗でのルールを明確化することで店舗内でのスムーズなコミュニケーションを目指します。

## 洗い出した要件
*	ログイン機能の実装	関係ない人が閲覧できないようにします。	
    deviseを利用してのログイン・ログアウトの実装	
    スタッフにログイン用のアドレスを共有し投稿内容が閲覧・編集できるようにする

*	マニュアル作成ページの実装	お店のルールを共有する
    ・店舗にいる時に説明をする画像を撮影しておく
    ・なんのためのマニュアルなのか、説明文を記載して投稿する

*	連絡事項作成ページの実装	お店であったこと・連絡事項を共有する
    ・投稿画面と過去のログを見ることができる	
    ・アルバイトがない日でもどんなことがあったのか、常連さんが来たか等を確認する

*	シフトページの実装	シフトが確認できるようにする	
    ・作成済シフトが反映されるようにする	
    ・Webにアクセスするだけでシフト確認ができる
    ・共有することでシフト作成時点のミスがないかチェックすることが可能

## 実装予定の機能
  動画で投稿ができるように実装予定です。
  
## 実装した機能について
  ユーザー登録をすることで関係者以外は閲覧ができなくなっています。
  シンプルなユーザーフェースで簡単に利用ができます。




* Ruby 2.6.5

## データベース設計
  ER図：file:///Users/naomimaki/Library/Mobile%20Documents/com~apple~CloudDocs/%E3%81%BE%E3%81%AB%E3%82%85%E3%81%AA%E3%81%B2%E3%82%99ER%E5%9B%B3.drawio

# データベース

## users テーブル

| Column           | Type    | Options                         |
| ---------------- | ------- | ------------------------------- |
| shopname         | string  | null: false                     |
| email            | string  | null: false                     |
| password         | string  | null: false                     |
| share_id         | integer | null: false, foreign_key: true  |
| manual_id        | integer | null: false, foreign_key: true  |
| post_id          | integer | null: false , foreign_key: true |

### Association
- has_many :shares
- has_one :post
- has_many :manuals

## posts テーブル

| Column        | Type    | Options                       |
| ------------- | ------- | ----------------------------- |
| name          | string  | null: false                   |
| greeting      | text    | null: false                   |
| image         | integer | null: false                   |
| user_id       | integer |null:false, foreign_key: true  |

### Association
- belongs_to :user


## manuals テーブル

| Column            | Type    | Options                       |
| ----------------- | ------- | ------------------------------|
| title             | string  | null: false                   |
| explanation       | itext   | null: false                   |
| image             | text    | null: false                   |
| user_id           | integer |null:false, foreign_key: true  |


### Association
- belongs_to :user

## shares テーブル

| Column            | Type    | Options                       |
| ----------------- | ------- | ------------------------------|
| date              | string  | null: false                   |
| name              | string  | null: false                   |
| explanation       | text    | null: false                   |
| user_id           | integer |null:false, foreign_key: true  |

### Association
- belongs_to :user