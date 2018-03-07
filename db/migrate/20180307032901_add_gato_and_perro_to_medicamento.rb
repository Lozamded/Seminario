class AddGatoAndPerroToMedicamento < ActiveRecord::Migration[5.1]
  def change
    add_reference :medicamentos, :gato, foreign_key: true
    add_reference :medicamentos, :perro, foreign_key: true
  end
end
  
