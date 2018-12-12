class AddReplacedIngredients < ActiveRecord::Migration[5.2]
  def change
    add_reference :replaced_ingredients, :ingredient, foreign_key: true
  end
end
