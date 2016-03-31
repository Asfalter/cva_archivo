class Bloque < ActiveRecord::Base
	belongs_to :tipos_bloque
	belongs_to :estados_bloque
	belongs_to :localidad
	belongs_to :ubicacion
	has_many :documentos
end
