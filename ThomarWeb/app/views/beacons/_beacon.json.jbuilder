json.extract! beacon, :id, :uuid, :manufacturer, :battery, :longitude, :latitude, :image, :description, :created_at, :updated_at
json.url beacon_url(beacon, format: :json)
