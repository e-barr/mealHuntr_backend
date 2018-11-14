class TripLeg < ApplicationRecord
  belongs_to :trip
  belongs_to :user, through: :trip

  def initialize(trip_id, trip_step, start_coor, end_coor)
    
  end
end
