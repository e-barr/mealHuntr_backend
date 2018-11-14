class CreateTripLegs < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_legs do |t|
      t.integer :trip_id
      t.integer :trip_step
      t.string :start_coor
      t.string :end_coor

      t.timestamps
    end
  end
end
