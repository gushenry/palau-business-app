json.extract! user, :id, :username, :password_digest, :role, :agency, :active, :created_at, :updated_at
json.url user_url(user, format: :json)
