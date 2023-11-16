class Title < ApplicationRecord
  belongs_to :room
  belongs_to :user

  validates :content, presence: true
  validates :amount, presence: true
end
