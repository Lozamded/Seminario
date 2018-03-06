json.extract! medicamento, :id, :nombre, :cantidad, :frecuencia, :created_at, :updated_at
json.url medicamento_url(medicamento, format: :json)
