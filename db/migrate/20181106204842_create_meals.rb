class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :meal_name
      t.integer :trip_id
      t.boolean :current_meal

      t.timestamps
    end
  end
end
