json.extract! poi, :id, :name, :description, :image, :longitude, :latitude, :created_at, :updated_at
json.url poi_url(poi, format: :json)
