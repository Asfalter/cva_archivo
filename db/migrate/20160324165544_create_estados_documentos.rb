class CreateEstadosDocumentos < ActiveRecord::Migration
  def change
    create_table :estados_documentos do |t|
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
