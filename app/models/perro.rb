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
end
  