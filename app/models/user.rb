class User < ApplicationRecord
  mount_uploader :image_path, UserImagesUploader 
  has_secure_password
  has_many :allergens_users
  has_many :allergens, through: :allergens_users
  accepts_nested_attributes_for :allergens_users #この行を追加
end
