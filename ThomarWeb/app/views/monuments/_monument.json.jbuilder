json.extract! monument, :id, :name, :description, :image, :longitude, :latitude, :address, :created_at, :updated_at
json.url monument_url(monument, format: :json)
