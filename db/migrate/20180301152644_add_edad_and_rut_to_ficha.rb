class AddEdadAndRutToFicha < ActiveRecord::Migration[5.1]
  def change
    add_column :fichas, :edad, :bigint
    add_column :fichas, :rut, :string
  end
end
