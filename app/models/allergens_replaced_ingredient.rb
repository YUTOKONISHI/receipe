class AllergensReplacedIngredient < ApplicationRecord
  belongs_to :allergen
  belongs_to :replaced_ingredient
end
