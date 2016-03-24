class CreateLocalidads < ActiveRecord::Migration
  def change
    create_table :localidads do |t|
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
