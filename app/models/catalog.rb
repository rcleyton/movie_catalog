# frozen_string_literal: true

class Catalog < ApplicationRecord
  def self.upload(file)
    CSV.foreach(file.path, headers: true) do |row|
      Catalog.create!(show_id: row[0],
                      category: row[1],
                      title: row[2],
                      director: row[3],
                      cast: row[4],
                      country: row[5],
                      date_added: row[6],
                      release_year: row[7],
                      rating: row[8],
                      duration: row[9],
                      listed_in: row[10],
                      description: row[11])
    end
  end
end
