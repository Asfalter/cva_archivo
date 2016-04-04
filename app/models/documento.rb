class Documento < ActiveRecord::Base
	belongs_to :tipos_documento
	belongs_to :estados_documento
	belongs_to :localidad
	belongs_to :ubicacion
	belongs_to :bloque

	filterrific(
	  default_filter_params: { sorted_by: 'created_at_desc' },
	  available_filters: [
	    :sorted_by,
	    :search_query,
	  ]
	)
end
