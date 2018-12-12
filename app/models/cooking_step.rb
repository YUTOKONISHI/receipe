class CookingStep < ApplicationRecord
  belongs_to :receipe
  
  mount_uploader :image_path, CookingStepImagesUploader 
  
  #validates :receipe_id, presence: true
  validates :number, presence: true
  validates :description, presence: true
  
end
