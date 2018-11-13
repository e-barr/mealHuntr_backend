class Meal < ApplicationRecord
  has_many: :meal_items
  belongs_to: :trip
  belongs_to: :user, thorugh: :trip

  def total_status(meal_id)
  end
end
