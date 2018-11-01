class Allergen < ApplicationRecord
    has_many :allergens_users
    has_many :users, through: :allergens_users
end
