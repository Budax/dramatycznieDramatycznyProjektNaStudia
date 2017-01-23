json.extract! user, :id, :name, :surname, :login, :password, :role, :country, :created_at, :updated_at
json.url user_url(user, format: :json)