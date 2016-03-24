json.array!(@documentos) do |documento|
  json.extract! documento, :id, :tipo, :descripcion, :estado, :localidad, :ubicacion, :custodio, :bloque
  json.url documento_url(documento, format: :json)
end
