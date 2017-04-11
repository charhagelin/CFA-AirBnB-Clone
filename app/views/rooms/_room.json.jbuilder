json.extract! room, :id, :title, :description, :price, :capacity, :bathrooms, :pets, :smoking, :bath, :wifi, :share, :parties, :user_id, :created_at, :updated_at
json.url room_url(room, format: :json)
