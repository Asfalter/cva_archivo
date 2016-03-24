class CreateUbicacions < ActiveRecord::Migration
  def change
    create_table :ubicacions do |t|
      t.string :descripcion
      t.integer :localidad

      t.timestamps null: false
    end
  end
end
