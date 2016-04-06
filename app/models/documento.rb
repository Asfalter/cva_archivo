class Documento < ActiveRecord::Base
	belongs_to :tipos_documento
	belongs_to :estados_documento
	belongs_to :localidad
	belongs_to :ubicacion
	belongs_to :bloque
	belongs_to :user
end
