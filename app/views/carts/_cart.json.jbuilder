json.extract! cart, :id, :project_id, :tap_id, :created_at, :updated_at
json.url cart_url(cart, format: :json)