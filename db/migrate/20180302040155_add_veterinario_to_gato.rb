class AddVeterinarioToGato < ActiveRecord::Migration[5.1]
  def change
    add_reference :gatos, :veterinario, foreign_key: true
  end
end
