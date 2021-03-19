class Information < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  with_options presence: true do
    validates :image
    validates :date_id
    validates :fish
  end

  with_options numericality: { other_than: 1 } do
    validates :prefecture_id
  end
end
