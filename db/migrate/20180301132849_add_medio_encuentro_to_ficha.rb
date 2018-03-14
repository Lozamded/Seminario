class AddMedioEncuentroToFicha < ActiveRecord::Migration[5.1]
  def change
    add_column :fichas, :medio_encuentro, :string
    add_column :fichas, :medio_encuentro_text, :text
  end
end
