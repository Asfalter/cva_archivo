json.array!(@estados_documentos) do |estados_documento|
  json.extract! estados_documento, :id, :descripcion
  json.url estados_documento_url(estados_documento, format: :json)
end
