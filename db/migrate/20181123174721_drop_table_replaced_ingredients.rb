class DropTableReplacedIngredients < ActiveRecord::Migration[5.2]
  def change
     drop_table :replaced_ingredients
  end
end
