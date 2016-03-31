class FixUbicacionColumnNames < ActiveRecord::Migration
  def change
  	change_table :ubicacions do |t|
	  	t.rename :localidad, :localidad_id
	  end
  end
end
