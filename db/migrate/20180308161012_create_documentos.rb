class CreateDocumentos < ActiveRecord::Migration[5.1]
  def change
    create_table :documentos do |t|
      t.string :nombre
      t.string :tipo
      t.string :file
      t.string :link

      t.timestamps
    end
  end
end
