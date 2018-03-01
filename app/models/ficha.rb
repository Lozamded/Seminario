class Ficha < ApplicationRecord
   
    has_many :perros, dependent: :destroy
    accepts_nested_attributes_for :perros,
                                  reject_if: proc{ |attributes| attributes['nombre'].blank? },
                                  allow_destroy: true

    has_many :gatos, dependent: :destroy
    accepts_nested_attributes_for :gatos,
                                    reject_if: proc{ |attributes| attributes['nombre'].blank? },
                                    allow_destroy: true
end
