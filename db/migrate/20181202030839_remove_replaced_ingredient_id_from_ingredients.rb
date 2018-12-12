class RemoveReplacedIngredientIdFromIngredients < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :ingredients, :replaced_ingredients
    remove_index :ingredients, :replaced_ingredient_id
    remove_reference :ingredients, :replaced_ingredient
  end
end
