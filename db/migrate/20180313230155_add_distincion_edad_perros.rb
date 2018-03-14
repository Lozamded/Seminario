class AddDistincionEdadPerros < ActiveRecord::Migration[5.1]
  def change

    add_column :perros, :formato_edad, :string
    add_column :perros, :fecha_operacion, :date

    add_column  :gatos, :formato_edad, :string
    add_column :gatos, :fecha_operacion, :date

  end
end
