class CreateTiposBloques < ActiveRecord::Migration
  def change
    create_table :tipos_bloques do |t|
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
