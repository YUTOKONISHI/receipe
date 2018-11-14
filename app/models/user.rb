class User < ApplicationRecord
  mount_uploader :image_path, UserImagesUploader 
  has_secure_password
  has_many :allergens_users
  has_many :allergens, through: :allergens_users
  accepts_nested_attributes_for :allergens_users #この行を追加
  
  validates :email, :first_name, :last_name, :image_path, presence: true
  validates :email, uniqueness: true
  validates :registration, acceptance: true
end
