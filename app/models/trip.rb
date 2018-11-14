class Trip < ApplicationRecord
  belongs_to :user
  has_many :trip_legs
  has_one :meal

  attr_accessor :user

  def initialize(user_id, coor_arr)
    return 'Need a start and end point' unless coor_arr.split(",").length >= 4
    generate_trip_legs(coor_arr)
    self.user = User.find { |user| user.id === user_id }
  end

  def generate_trip_legs(coor_arr)
    coordinates = coor_arr.dup.split(",")
    trip_step = -1

    while coordinates.length != 0
      two_coors = []
      trip_step += 1
      2.times do |t|
        two_coors.push(coordinates.shift)
      end

      TripLeg.new(self.id, trip_step, two_coors[0], two_coors[1])
    end

  end

  def get_trip_legs
  end
end
