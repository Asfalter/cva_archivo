json.array!(@localidads) do |localidad|
  json.extract! localidad, :id, :descripcion
  json.url localidad_url(localidad, format: :json)
end
