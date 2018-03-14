class Medicamento < ApplicationRecord
  belongs_to :perro, optional: true
  belongs_to :gato, optional: true
end
