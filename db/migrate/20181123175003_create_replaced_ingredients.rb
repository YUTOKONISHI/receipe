class CreateReplacedIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :replaced_ingredients do |t|
      t.string :name
      t.string :quantity

      t.timestamps
    end
  end
end
