class Room < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :address, presence: true
end