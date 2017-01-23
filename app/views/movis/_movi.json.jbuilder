json.extract! movi, :id, :title, :year, :country, :film_genre, :director, :actors, :comments, :reports, :created_at, :updated_at
json.url movi_url(movi, format: :json)