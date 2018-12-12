class CreateCookingSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :cooking_steps do |t|
      t.references :receipe, foreign_key: true
      t.integer :number
      t.string :description
      t.string :image_path

      t.timestamps
    end
  end
end
