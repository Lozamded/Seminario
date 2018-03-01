class AddDatosToPerrosAndGatos < ActiveRecord::Migration[5.1]
  def change
    add_column :perros, :apto_cirujia, :string
    add_column :perros, :apto_cirujia_text,:text
    add_column :perros, :medico_tratante, :string
    add_column :perros, :hora_ingreso, :string
    add_column :perros, :tipo_cirujia, :string
    add_column :perros, :hallazgos, :text
    add_column :perros, :hora_alta, :string 
    add_column :perros, :complicaciones, :text

    add_column :gatos, :apto_cirujia, :string
    add_column :gatos, :apto_cirujia_text, :text
    add_column :gatos, :medico_tratante, :string
    add_column :gatos, :hora_ingreso, :string
    add_column :gatos, :tipo_cirujia, :string
    add_column :gatos, :hallazgos, :text
    add_column :gatos, :hora_alta, :string
    add_column :gatos, :complicaciones, :text
  end
end
