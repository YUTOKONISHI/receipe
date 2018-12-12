json.extract! receipe, :id, :user_id, :receipe_category_id, :title, :introduction, :image_path, :created_at, :updated_at
json.url receipe_url(receipe, format: :json)
