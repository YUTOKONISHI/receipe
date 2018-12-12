json.extract! cooking_step, :id, :receipe_id, :number, :description, :image_path, :created_at, :updated_at
json.url cooking_step_url(cooking_step, format: :json)
