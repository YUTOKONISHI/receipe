class Allergen < ApplicationRecord
    has_many :allergens_users
    has_many :users, through: :allergens_users
    
    has_many :allergens_ingredients
    has_many :ingredients, through: :allergens_ingredients
   
    has_many :allergens_replaced_ingredients
    has_many :replaced_ingredients, through: :allergens_replaced_ingredients
    #accepts_nested_attributes_for :allergens_replaced_ingredients
 
end
