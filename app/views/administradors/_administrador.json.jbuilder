json.extract! administrador, :id, :name, :email, :senha, :created_at, :updated_at
json.url administrador_url(administrador, format: :json)
