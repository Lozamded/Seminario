class AddTipoToPerrosAndGatos < ActiveRecord::Migration[5.1]
  def change
    add_column :perros, :tipo, :string
    add_column :gatos, :tipo, :string
  end
end
