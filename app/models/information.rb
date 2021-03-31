class Information < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :title
    validates :fish
    validates :date_id
  end

  with_options numericality: { only_integer: true }, allow_blank: true do
    validates :size
    validates :weight
    validates :number
  end

  with_options numericality: { other_than: 1 } do
    validates :prefecture_id
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

end
