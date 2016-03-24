class CreateBloques < ActiveRecord::Migration
  def change
    create_table :bloques do |t|
      t.integer :tipo
      t.string :descripcion
      t.integer :estado
      t.integer :localidad
      t.integer :ubicacion
      t.integer :custodio

      t.timestamps null: false
    end
  end
end
