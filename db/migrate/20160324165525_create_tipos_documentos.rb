class CreateTiposDocumentos < ActiveRecord::Migration
  def change
    create_table :tipos_documentos do |t|
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
