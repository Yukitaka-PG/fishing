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

function showNextTxt() {
    setInterval(changeTxt, 7200);
  const txts = document.getElementsByClassName('text');
  let txtIndex = -1;

    function changeTxt() {
      txtIndex++;

      let currentNum = txtIndex % txts.length;
      let nextNum = (txtIndex + 1) % txts.length;
      let current = txts[currentNum];
      let next = txts[nextNum];

      setTimeout(function () {
        current.classList.remove('is-active');
      }, 3000);
      setTimeout(function () {
        current.style.display = 'none';
        next.style.display = 'block';
      }, 5100);

      setTimeout(function () {
        next.classList.add('is-active');
      }, 5200);
    }
  }