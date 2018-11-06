class CreateMealItems < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_items do |t|
      t.string :name
      t.string :status
      t.integer :meal_id

      t.timestamps
    end
  end
end
