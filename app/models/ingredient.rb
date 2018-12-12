class Ingredient < ApplicationRecord
  belongs_to :receipe, inverse_of: :ingredients, optional: true
  has_one :replaced_ingredient
  accepts_nested_attributes_for :replaced_ingredient
   
  validates :receipe, presence: true
  
  has_many :allergens_ingredients,  dependent: :destroy
  has_many :allergens, through: :allergens_ingredients
  accepts_nested_attributes_for :allergens_ingredients, allow_destroy: true #この行を追加
  
  validates :name, presence: true
  validates :quantity, presence: true
  
end
