json.extract! documento, :id, :nombre, :tipo, :file, :link, :created_at, :updated_at
json.url documento_url(documento, format: :json)
