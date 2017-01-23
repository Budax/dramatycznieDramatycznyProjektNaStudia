json.extract! movie, :id, :title, :year, :country, :film_genre, :director, :actors, :desc, :comments, :reports, :created_at, :updated_at
json.url movie_url(movie, format: :json)