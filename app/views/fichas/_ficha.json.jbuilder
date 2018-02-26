json.extract! ficha, :id, :nombre, :sexo, :telefono, :direccion, :comuna, :email, :created_at, :updated_at
json.url ficha_url(ficha, format: :json)
