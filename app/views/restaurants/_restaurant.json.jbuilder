json.extract! restaurant, :id, :name, :address, :description, :cuisine, :photo, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
