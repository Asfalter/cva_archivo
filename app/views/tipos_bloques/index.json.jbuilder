json.array!(@tipos_bloques) do |tipos_bloque|
  json.extract! tipos_bloque, :id, :descripcion
  json.url tipos_bloque_url(tipos_bloque, format: :json)
end
