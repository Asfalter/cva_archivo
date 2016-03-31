class FixBloqueColumnNames < ActiveRecord::Migration
  def change
  	  change_table :bloques do |t|
      	t.rename :tipo, :tipos_bloque_id
      	t.rename :estado, :estados_bloque_id
      	t.rename :localidad, :localidad_id
      	t.rename :ubicacion, :ubicacion_id
      	t.rename :custodio, :user_id
      end
  end
end
