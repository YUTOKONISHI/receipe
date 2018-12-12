class CreateReceipeEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :receipe_evaluations do |t|
      t.references :user, foreign_key: true
      t.references :receipe, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
