class User < ApplicationRecord
  acts_as_paranoid
  mount_uploader :image_path, UserImagesUploader 
  has_secure_password
  validates :password, length:  { minimum: 6 } , presence: true, allow_nil: true
  has_many :allergens_users,  dependent: :destroy
  has_many :allergens, through: :allergens_users
  accepts_nested_attributes_for :allergens_users, allow_destroy: true #この行を追加
  
  has_many :receipe_evaluations
  accepts_nested_attributes_for :receipe_evaluations 
  
  has_many :bookmarks, foreign_key: :user_id, dependent: :destroy
  accepts_nested_attributes_for :bookmarks, allow_destroy: true #この行を追加
  
  has_many :receipes, through: :bookmarks
  
  validates :email, presence: true, uniqueness:  true
  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :image_path, presence: true
  validates :registration, acceptance: true
end
