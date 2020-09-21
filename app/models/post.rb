class Post < ApplicationRecord
  has_one_attached :image

  validates :shop_name, :name, :greeting, :image, presence: true
end
