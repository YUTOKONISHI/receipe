json.extract! user, :id, :email, :first_name, :last_name, :password_digest, :image_path, :registration, :created_at, :updated_at
json.url user_url(user, format: :json)
