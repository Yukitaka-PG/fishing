## アプリ名
fishing

## 概要 
このアプリは誰でも簡単に釣果を投稿できる釣果情報アプリです。
自分や他の人が投稿した釣果情報を閲覧する事ができます。

## 本番環境
デプロイURL：https://fishing-2021.herokuapp.com/  
テストアカウント  
Email:test1@gmail.com
Password:a11111  
Email:test2@gmail.com
Password:a11111

## 制作背景（意図）


## DEMO
#### トップページ

#### 新規登録画面

#### 詳細表示画面

#### 編集画面

#### 削除画面

## 工夫したポイント



## 使用技術（開発環境）
#### バックエンド
Ruby on Rails, Ruby, HTML, CSS, JavaScript

#### フロントエンド
HTML, CSS, JavaScript

#### データベース
MySQL, SequelPro

#### インフラ

#### Webサーバ （本番環境）

#### アプリケーションサーバ （本番環境）

#### ソース管理
GitHub, GitHubDesktop

#### テスト
Rspec

#### エディタ
VSCode

## 課題や今後実装したい機能




## Users

| Column               | Type   | Options                   |
|----------------------|--------|---------------------------|
| nickname             | string | null: false               |
| email                | string | null: false, unique: true |
| encrypted_password   | string | null: false               |

### Association

- has_many :informations

## Informations(釣果情報)

| Column              | Type       | Options                        |
|---------------------|----------- |------------------------------- |
| title               | string     | null: false                    |
| text                | text       |                                |
| date_id             | integer    | null: false                    |
| fish                | string     | null: false                    |
| size                | integer    |                                |
| weight              | integer    |                                |
| number              | integer    |                                |
| prefecture_id       | integer    | null: false                    |
| area                | string     |                                |
| user                | references | null: false, foreign_key: true |

### Association

- belongs_to :user