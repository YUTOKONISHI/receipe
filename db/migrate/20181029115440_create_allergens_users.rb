class CreateAllergensUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :allergens_users do |t|
      t.integer :user_id
      t.integer :allergen_id

      t.timestamps
    end
  end
end
