class CreateGatos < ActiveRecord::Migration[5.1]
  def change
    create_table :gatos do |t|
      t.string :nombre
      t.bigint :edad
      t.string :sexo
      t.string :raza
      t.numeric :peso
      t.string :porte
      t.string :chip
      t.bigint :numero_chip
      t.string :agresividad
      t.string :color
      t.text :senas
      t.text :comentario
      t.references :ficha, foreign_key: true

      t.timestamps
    end
  end
end
