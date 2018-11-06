class Trip < ApplicationRecord
  has_one: :current_meal, foreign_key: :meal_id, primary_key: :id, class_name: :Meal

  belongs_to :user
  has_many :trip_legs
end
