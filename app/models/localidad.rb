class Localidad < ActiveRecord::Base
	has_many :bloques
	has_many :documentos
	has_many :ubicacions
end
