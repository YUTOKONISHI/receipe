class CreateAllergensIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :allergens_ingredients do |t|
      t.references :allergen, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
