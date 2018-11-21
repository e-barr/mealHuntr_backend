class MealItem < ApplicationRecord
  belongs_to :trip_leg
  has_one :trip, through: :trip_leg
end
