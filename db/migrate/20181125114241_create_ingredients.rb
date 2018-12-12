class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.references :receipe, foreign_key: true
      t.references :replaced_ingredient, foreign_key: true
      t.string :name
      t.string :quantity

      t.timestamps
    end
  end
end
