json.extract! ingredient, :id, :receipe_id, :replaced_ingredient_id, :name, :quantity, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
