class CreateDocumentos < ActiveRecord::Migration
  def change
    create_table :documentos do |t|
      t.integer :tipo
      t.string :descripcion
      t.integer :estado
      t.integer :localidad
      t.integer :ubicacion
      t.integer :custodio
      t.integer :bloque

      t.timestamps null: false
    end
  end
end
