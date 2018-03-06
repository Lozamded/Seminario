class Veterinario < ApplicationRecord
    has_many :perros
    has_many :gatos
end
