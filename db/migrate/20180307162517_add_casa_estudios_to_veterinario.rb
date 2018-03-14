class AddCasaEstudiosToVeterinario < ActiveRecord::Migration[5.1]
  def change
    add_column :veterinarios, :casa_estudios, :string
    add_column :veterinarios, :tipo_estudios, :string
  end
end
