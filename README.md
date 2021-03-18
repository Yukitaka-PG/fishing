## Users

| Column               | Type   | Options                   |
|----------------------|--------|---------------------------|
| nickname             | string | null: false               |
| email                | string | null: false, unique: true |
| encrypted_password   | string | null: false               |
| first_name           | string | null: false               |
| family_name          | string | null: false               |
| first_name_katakana  | string | null: false               |
| family_name_katakana | string | null: false               |

### Association

- has_many :Informations

## Informations(釣果情報)

| Column              | Type       | Options                        |
|---------------------|----------- |------------------------------- |
| text                | text       |                                |
| date_id             | integer    | null: false                    |
| fish                | string     | null: false                    |
| size                | integer    |                                |
| weight              | integer    |                                |
| number              | integer    |                                |
| Prefecture_id       | integer    | null: false                    |
| area                | string     |                                |
| user                | references | null: false, foreign_key: true |

### Association

- belongs_to :user
