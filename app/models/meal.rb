class Meal < ApplicationRecord
  belongs_to :trip
  has_one :user, through: :trip

  def total_status(meal_id)
  end
end
