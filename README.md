# README

# DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|role|integer|
|profile|string|
|avatar|string|

### Association
- has_many :likes
- has_many :articles
- has_many :picks
- has_many  :relashonships

## relashonshipsテーブル

|Column|Type|Options|
|------|----|-------|
|follower_id|reference|null: false, foreign_key: true|
|following_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user

## articlesテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|image|string|null: false|
|content|string|
|url|integer|null: false|
|category|integer|null: false|
|user_id|reference|null: false,, foreign_key: true|

### Association
- belongs_to :user
- has_many :picks

## Likes

テーブル

|Column|Type|Options|
|------|----|-------|
|user_id|reference|null: false, foreign_key: true|
|pick_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :pick


## Picksテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|reference|null: false, foreign_key: true|
|article_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :article

## 管理者機能

-ログインの際に管理者、ユーザーID(0)番のみ、
 投稿編集が行えるように編集する。




