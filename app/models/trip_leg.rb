class TripLeg < ApplicationRecord
  belongs_to :trip
  has_one :user, through: :trip

  has_many :meal_items
end
