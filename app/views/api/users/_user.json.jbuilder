json.extract! user, :id, :name, :password, :mail, :address, :created_at, :updated_at
json.url user_url(user, format: :json)
