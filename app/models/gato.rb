class Gato < ApplicationRecord
  belongs_to :ficha
  #has_one :veterinario, class_name: "${1/[[:alpha:]]+|(_)/(?1::\u)/g", foreign_key: "veterinario_id"}

  has_many :vacunas, dependent: :destroy
  accepts_nested_attributes_for :vacunas,
                                reject_if: proc{ |attributes| attributes['nombre'].blank? },
                                allow_destroy: true

  has_many :enfermedades, dependent: :destroy
  accepts_nested_attributes_for :enfermedades,
                                reject_if: proc{ |attributes| attributes['nombre'].blank? },
                                allow_destroy: true
end
