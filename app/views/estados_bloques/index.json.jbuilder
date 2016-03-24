json.array!(@estados_bloques) do |estados_bloque|
  json.extract! estados_bloque, :id, :descripcion
  json.url estados_bloque_url(estados_bloque, format: :json)
end
