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
私は釣りが好きです。初めて作成するオリジナルアプリは好きなものを作ってみたいと思い釣りアプリを作成することを決めました。  
釣りをしている人は自身で釣った魚を写真で撮る事が多いので、写真と各種釣果情報を纏めて投稿できるアプリを作成しました。

## DEMO
#### トップページ
![toppage1](https://user-images.githubusercontent.com/78136863/113465739-7fb95600-9471-11eb-9b08-c3de459d7e30.gif)
 
https://gyazo.com/277959e40b6dab45e4d90d396e03e494

#### 新規登録画面
https://gyazo.com/06d198fa8244474ecbdc3bea5adf411c

#### 投稿画面
https://gyazo.com/21239db43e77b9eff5024b1583ca0772

#### 詳細画面
https://gyazo.com/474c34f8e1df50fffa05ddda6f4978f6

#### 編集画面
https://gyazo.com/ff558055d5b809e381f8e7979c9b3632

#### 削除画面
https://gyazo.com/47ab156cd52c2efd32748df62815b6ff

## アプリのポイント
トップページはログインしていないユーザーでも見ることができます。  
deviseを導入しているので、トップページから新規登録やログイン・ログアウトも行えます。  
ログインしている状態でトップページの「新規投稿」か画面右側の「投稿する」をクリックすると新規投稿画面に遷移します。  
ログインしていない状態でも、釣果情報の画像をクリックすると釣果情報の詳細ページに遷移します。  
自身が投稿した内容を編集・削除する事ができます。  
また、トップページの下部に釣りの格言を表示し、JavaScriptで文字が変わるようにしています。

## 使用技術（開発環境）
#### バックエンド
Ruby on Rails, Ruby, HTML, CSS, JavaScript

#### フロントエンド
HTML, CSS, JavaScript

#### データベース
MySQL, SequelPro

#### インフラ
AWS (EC2), Docker(開発環境)

#### ソース管理
GitHub, GitHubDesktop

#### テスト
Rspec

#### エディタ
VSCode

## 課題や今後実装したい機能
未経験エンジニアの私の課題は学習です。エンジニアは常に学習していくことが必須の業界であると言われてます。日々学習に励みスキルを磨き、できるだけ早く一人前のエンジニアになれるよう努力していきます。  
今後実装したい機能はGoogleMap APIです。まだ、APIを実装したことがないので試してみたいと思う部分も多いのですが、アプリで魚が釣れた場所をGoogleMap APIで表示できるようにしてみたいです。



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
