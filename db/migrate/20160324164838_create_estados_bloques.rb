class CreateEstadosBloques < ActiveRecord::Migration
  def change
    create_table :estados_bloques do |t|
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
