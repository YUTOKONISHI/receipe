json.extract! receipe_evaluation, :id, :user_id, :receipe_id, :rating, :created_at, :updated_at
json.url receipe_evaluation_url(receipe_evaluation, format: :json)
