json.extract! actor, :id, :name, :surname, :country, :dateOfBirth, :dateOfDeath, :img, :films, :role, :created_at, :updated_at
json.url actor_url(actor, format: :json)