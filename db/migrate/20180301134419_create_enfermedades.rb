class CreateEnfermedades < ActiveRecord::Migration[5.1]
  def change
    create_table :enfermedades do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
