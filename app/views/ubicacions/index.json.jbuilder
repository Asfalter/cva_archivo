json.array!(@ubicacions) do |ubicacion|
  json.extract! ubicacion, :id, :descripcion, :localidad
  json.url ubicacion_url(ubicacion, format: :json)
end
