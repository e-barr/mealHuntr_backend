class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, unique: true
      t.string :email, unique: true
      t.string :password_digest
      t.string :location
      t.integer :current_meal_id, null: true

      t.timestamps
    end
  end
end
