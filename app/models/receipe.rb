class Receipe < ApplicationRecord
  belongs_to :user
  has_one :receipe_category
  accepts_nested_attributes_for :receipe_category  
  
  mount_uploader :image_path, ReceipeImagesUploader 
  
  has_many :receipe_evaluations
  accepts_nested_attributes_for :receipe_evaluations 
  
  has_many :bookmarks, foreign_key: :receipe_id, dependent: :destroy
  accepts_nested_attributes_for :bookmarks, allow_destroy: true #この行を追加
  
  has_many :users, through: :bookmarks
  
  has_many :ingredients
  accepts_nested_attributes_for :ingredients, allow_destroy: true #この行を追加
  
 
  #has_and_belongs_to_many :replaced_ingredients
  #accepts_nested_attributes_for :replaced_ingredients
  
  has_many :cooking_steps
  accepts_nested_attributes_for :cooking_steps, allow_destroy: true #この行を追加
  
  validates :title, presence: true
  validates :receipe_category_id, presence: true
  validates :introduction, presence: true
  validates :image_path, presence: true

  # scope :having_all_ingredients_of, ->(*ingredient_ids){
    #joins(:allergens_ingredients).joins(:allergens).where(id: :allergens_id)
    #where('ingredients.id = ?', ingredient_ids)
  #}
  #scope :having_all_allergens_of, ->(*allergen_ids){
  #  Receipe.eager_load(:ingredients).where(allergen_id: :allergens_ingredients_allergen_id)
  #}
  
  # private
 
   #def self.ransackable_scopes(auth_object = nil)
   #  %w(having_all_allergens_of)
   #end
  
  
end
