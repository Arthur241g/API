class Anime < ApplicationRecord
    def self.import_from_csv
      begin
        ActiveRecord::Base.transaction do
          CSV.foreach('db/anime.csv', headers: true) do |row|
            # Remplacez les valeurs vides par nil
            row_hash = row.to_h.transform_values { |value| value.blank? ? nil : value }
            anime = Anime.new(row_hash)
            unless anime.save
              raise ActiveRecord::Rollback, "Erreur lors de l'importation de la ligne : #{anime.errors.full_messages.join(', ')}"
            end
          end
        end
        puts 'Données importées avec succès !'
      rescue StandardError => e
        puts "Erreur lors de l'importation : #{e.message}"
      end
    end

    Anime.import_from_csv
    
  end
  

  #importer toutes les donnees via cette commande:  Anime.import_from_csv 