class Share < ApplicationRecord
  belongs_to :user

  validates  :date, :name, :explanation, presence: true
end
