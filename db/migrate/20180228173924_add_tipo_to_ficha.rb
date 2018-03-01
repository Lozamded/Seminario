class AddTipoToFicha < ActiveRecord::Migration[5.1]
  def change
    add_column :fichas, :tipo, :string
  end
end
