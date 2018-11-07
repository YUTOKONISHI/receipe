class CreateAllergensUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :allergens_users do |t|
      t.references :allergen, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
