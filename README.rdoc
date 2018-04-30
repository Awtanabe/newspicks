# README

#DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|pasword|integer|null: false|
|profile|integer|
|avatar|string|
|comment_id|integer|null: false, foreign_key: true|
|like_id|integer|null: false, foreign_key: true|


### Association
- has_many :comments
- has_many :likes

##articleテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|image|string|null: false|
|content|integer|
|url|integer|null: false|
|category|integer|null: false|
|user_id|integer|null: false,, foreign_key: true|
|comment_id|integer|null: false, foreign_key: true|
|pick_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :comments
- has_many :picks

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|content|text|null: false|
|article_id|integer|null: false, foreign_key: true|
|like_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :article
- has_many   :likes

##Likeテーブル

|Column|Type|Options|
|------|----|-------|
|comment_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :comment

##Pickテーブル

|Column|Type|Options|
|------|----|-------|
|article_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :article

##管理者機能

-ログインの際に管理者、ユーザーID(0)番のみ、
 投稿編集が行えるように編集する。




