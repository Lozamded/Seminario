class CreateMedicamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :medicamentos do |t|
      t.string :nombre
      t.decimal :cantidad
      t.text :frecuencia

      t.timestamps
    end
  end
end
