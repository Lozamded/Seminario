class Perro < ApplicationRecord
  belongs_to :ficha
  belongs_to :veterinario, optional: true


  has_many :vacunas, dependent: :destroy
  accepts_nested_attributes_for :vacunas,
                                reject_if: proc{ |attributes| attributes['nombre'].blank? },
                                allow_destroy: true

  has_many :enfermedades, dependent: :destroy
  accepts_nested_attributes_for :enfermedades,
                                reject_if: proc{ |attributes| attributes['nombre'].blank? },
                                allow_destroy: true

  has_many :medicamentos, dependent: :destroy
  accepts_nested_attributes_for :medicamentos,
                                reject_if: proc{ |attributes| attributes['nombre'].blank? },
                                allow_destroy: true

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |gato|
        csv << gato.attributes.values_at(*column_names)
      end
    end
  end
  
end
