class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users
  has_many :categories

  validates :name, presence: true

end
