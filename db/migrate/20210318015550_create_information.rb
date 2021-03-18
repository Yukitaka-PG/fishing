class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
      t.text :text
      t.date :date_id, null: false
      t.string :fish, null: false
      t.integer :size
      t.integer :weight
      t.integer :number
      t.integer :prefecture_id, null: false
      t.string :area
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
