class User < ApplicationRecord
  mount_uploader :image_path, ImageUploader
  has_secure_password
end
