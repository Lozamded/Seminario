class AddGatoYPerroToEnfermedades < ActiveRecord::Migration[5.1]
  def change
    add_reference :enfermedades, :gato, foreign_key: true
    add_reference :enfermedades, :perro, foreign_key: true
  end
end
