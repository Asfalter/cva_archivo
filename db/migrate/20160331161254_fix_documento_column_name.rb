class FixDocumentoColumnName < ActiveRecord::Migration
  def change
	 	change_table :documentos do |t|
	  	t.rename :tipo, :tipos_documento_id
	  	t.rename :estado, :estados_documento_id
	  	t.rename :localidad, :localidad_id
	  	t.rename :ubicacion, :ubicacion_id
	  	t.rename :custodio, :user_id
	  	t.rename :bloque, :bloque_id
	  end
  end
end
