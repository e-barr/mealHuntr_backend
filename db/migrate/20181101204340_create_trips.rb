class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.string :coor_str

      t.timestamps
    end
  end
end
