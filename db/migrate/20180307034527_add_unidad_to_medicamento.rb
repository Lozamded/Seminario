class AddUnidadToMedicamento < ActiveRecord::Migration[5.1]
  def change
    add_column :medicamentos, :unidad, :string
  end
end
