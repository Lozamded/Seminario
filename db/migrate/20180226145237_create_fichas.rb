class CreateFichas < ActiveRecord::Migration[5.1]
  def change
    create_table :fichas do |t|
      t.string :nombre
      t.string :sexo
      t.string :telefono
      t.string :direccion
      t.string :comuna
      t.string :email

      t.timestamps
    end
  end
end
