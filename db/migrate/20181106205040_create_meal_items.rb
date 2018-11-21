class CreateMealItems < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_items do |t|
      t.string :name, null: true
      t.string :status
      t.integer :trip_leg_id

      t.timestamps
    end
  end
end
