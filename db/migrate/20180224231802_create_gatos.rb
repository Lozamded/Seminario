class CreateGatos < ActiveRecord::Migration[5.1]
  def change
    create_table :gatos do |t|
      t.string :nombre
      t.bigint :numero_serie
      t.string :propietario
      t.string :raza
      t.numeric :peso
      t.string :tamaño
      t.text :senas
      t.text :comentario

      t.timestamps
    end
  end
end
