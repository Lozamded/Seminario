class AddDuranteToMedicamento < ActiveRecord::Migration[5.1]
  def change
    rename_column :medicamentos, :frecuencia, :cada
    add_column :medicamentos, :durante, :bigint
    add_column :medicamentos, :durante_unidad, :string
  end
end
