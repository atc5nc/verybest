json.extract! favorite, :id, :dish_id, :venue_id, :notes, :image, :user_id, :created_at, :updated_at
json.url favorite_url(favorite, format: :json)
