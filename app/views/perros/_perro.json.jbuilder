json.extract! perro, :id, :nombre, :edad, :sexo, :raza, :peso, :porte, :chip, :numero_chip, :agresividad, :color, :senas, :comentario, :fiicha_id, :created_at, :updated_at
json.url perro_url(perro, format: :json)
