class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :meal_name
      t.integer :trip_id
      t.integer :user_id

      t.timestamps
    end
  end
end
