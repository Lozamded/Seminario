class Veterinario < ApplicationRecord
    has_many :perros
    has_many :gatos

    def self.to_csv(options = {})
      CSV.generate(options) do |csv|
        csv << column_names
        all.each do |gato|
          csv << veterinario.attributes.values_at(*column_names)
        end
      end
    end
end
