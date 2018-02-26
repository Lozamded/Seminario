json.extract! perro, :id, :nombre, :numero_serie, :propietario, :raza, :peso, :tamaño, :senas, :comentario, :created_at, :updated_at
json.url perro_url(perro, format: :json)
