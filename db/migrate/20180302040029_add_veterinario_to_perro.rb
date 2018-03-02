class AddVeterinarioToPerro < ActiveRecord::Migration[5.1]
  def change
    add_reference :perros, :veterinario, foreign_key: true
  end
end
