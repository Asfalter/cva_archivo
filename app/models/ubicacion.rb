class Ubicacion < ActiveRecord::Base
	has_many :bloques
	has_many :documentos
	belongs_to :localidad
end
