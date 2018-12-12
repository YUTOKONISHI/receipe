class CreateReceipes < ActiveRecord::Migration[5.2]
  def change
    create_table :receipes do |t|
      t.references :user, foreign_key: true
      t.references :receipe_category, foreign_key: true
      t.string :title
      t.string :introduction
      t.string :image_path

      t.timestamps
    end
  end
end
