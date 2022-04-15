json.extract! client, :id, :name, :last_name, :{100}, :nit, :created_at, :updated_at
json.url client_url(client, format: :json)
