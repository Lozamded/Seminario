class CreateVeterinarios < ActiveRecord::Migration[5.1]
  def change
    create_table :veterinarios do |t|
      t.string :nombre
      t.string :sexo
      t.date :fecha_nacimiento
      t.string :rut
      t.string :tipo
      t.text :especialidad

      t.timestamps
    end
  end
end
