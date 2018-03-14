class AddDuenoToPerroAndGato < ActiveRecord::Migration[5.1]
  def change
    add_column :perros, :propietario_es, :string
    add_column   :gatos, :propietario_es, :string
  end
end
