# frozen_string_literal: true

class CreateCatalogs < ActiveRecord::Migration[7.0]
  def change
    create_table :catalogs do |t|
      t.string :show_id
      t.string :type
      t.string :title
      t.string :director
      t.text :cast
      t.string :country
      t.string :date_added
      t.integer :release_year
      t.string :rating
      t.string :duration
      t.string :listed_in
      t.text :description

      t.timestamps
    end
  end
end
