class AllergensIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :allergen
end
