# README

# テーブル設計

## users テーブル

| Column             | Type   | Options     | default |
| ------------------ | ------ | ----------- | --------|
| email              | string | null: false | devise  |
| encrypted_password | string | null: false | devise  |
| name               | string | null: false |         |
| profile            | text   | null: false |         |
| occupation         | text   | null: false |         |
| position           | text   | null: false |         |

### Association

-has_many :tweets
-has_many :comments
-

## tweets テーブル

| Column     | Type       | Options           |
| ---------- | ---------- | ----------------- |
| title      | string     | null: false       |
| catch_copy | text       | null: false       |
| concept    | text       | null: false       |
| user       | references | foreign_key: true |

### Association

-belongs_to :user
-has_many :comments


## comments テーブル

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| text        | text       | null: false       |
| tweet       | references | foreign_key :true |
| user        | references | foreign_key :true |

### Association

-belongs_to :user
-belongs_to :tweet
-
