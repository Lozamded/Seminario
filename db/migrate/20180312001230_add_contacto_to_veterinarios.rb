class AddContactoToVeterinarios < ActiveRecord::Migration[5.1]
  def change
    add_column :veterinarios, :telefono, :string
    add_column :veterinarios, :email, :string
  end
end
