class Trip < ApplicationRecord
  after_save :generate_trip_legs
  belongs_to :user
  has_many :trip_legs
  has_one :meal

  def generate_trip_legs
    coordinates = coor_str.dup.split(",")
    trip_step = -1
    counter = coor_str.dup.split(",").length / 2

    counter.times do |t|
      two_coors = []
      trip_step += 1
      two_coors.push(coordinates.shift)
      two_coors.push(coordinates.shift)

      TripLeg.create(trip_id: self.id, user_id: self.user_id, trip_step: trip_step, start_coor: two_coors[0], end_coor: two_coors[1])
    end


  end

  # def get_trip_legs
  # end
end
