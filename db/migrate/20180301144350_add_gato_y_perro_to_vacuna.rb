class AddGatoYPerroToVacuna < ActiveRecord::Migration[5.1]
  def change
    add_reference :vacunas, :gato, foreign_key: true
    add_reference :vacunas, :perro, foreign_key: true
  end
end
