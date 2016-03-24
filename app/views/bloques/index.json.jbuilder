json.array!(@bloques) do |bloque|
  json.extract! bloque, :id, :tipo, :descripcion, :estado, :localidad, :ubicacion, :custodio
  json.url bloque_url(bloque, format: :json)
end
