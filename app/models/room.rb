class Room < ApplicationRecord
  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users
  has_many :titles, dependent: :destroy

  validates :name, presence: true
  
end
