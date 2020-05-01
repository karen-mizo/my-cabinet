# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# データベース設計

## user_database
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|e-mail|string|null: false, unique: true|
|password|string|null: false|

### Association
has_many :posts
belongs_to :user

## post_database
|Column|Type|Options|
|------|----|-------|
|name|text|null: false|
|text|text||
|image|string||
|user_id|interger|null: false,foreign_key: true|

### Association
has_many :users
has_many :cabinets
has_many :tags through: :post_tag 


## cabinet_databese
|Column|Type|Options|
|------|----|-------|
|user_id|interger|null: false,foreign_key: true|
|post_id|interger|null: false,foreign_key: true|

### Association
has_many :users
has_many :posts

## tag_database
|Column|Type|Options|
|------|----|-------|
|text|text|null: false, unique: true|

### Association
has_many :post_tag
has_many :posts through: :post_tag

## post_tag_database
|Column|Type|Options|
|------|----|-------|
|tag_id|interger|null: false,foreign_key: true|
|post_id|interger|null: false,foreign_key: true|
### Association
belongs_to :post
belongs_to :tag