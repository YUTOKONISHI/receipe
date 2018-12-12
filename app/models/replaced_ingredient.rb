class ReplacedIngredient < ApplicationRecord
  has_many :allergens_replaced_ingredients,  dependent: :destroy
  has_many :allergens, through: :allergens_replaced_ingredients
  accepts_nested_attributes_for :allergens_replaced_ingredients, allow_destroy: true #この行を追加
  belongs_to :ingredient, optional: true
  #has_and_belongs_to_many :receipes
  validates :ingredient, presence: :true
 
end
