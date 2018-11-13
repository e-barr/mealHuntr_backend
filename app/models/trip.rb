class Trip < ApplicationRecord
  belongs_to :user
  has_many :trip_legs
  has_one :meal

  def get_trip_legs(trip_id)
  end
end
