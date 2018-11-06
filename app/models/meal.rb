class Meal < ApplicationRecord
  has_many: :meals
  belongs_to: :trip
  belongs_to: :user, null: true, optional: true
end
