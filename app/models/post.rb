class Post < ApplicationRecord
  has_one_attached :image

  belongs_to :user

  validates  :name, :greeting, :image, presence: true
end
