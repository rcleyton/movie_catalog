# frozen_string_literal: true

class CatalogSerializer < ActiveModel::Serializer
  attributes :show_id, :title, :category, :release_year, :country, :date_added, :description
end
