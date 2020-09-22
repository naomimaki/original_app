class Post < ApplicationRecord
  has_one_attached :image

  has_many :manuals
  belongs_to :users
  has_many :shares

  validates :shop_name, :name, :greeting, :image, presence: true
end
