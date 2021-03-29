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
