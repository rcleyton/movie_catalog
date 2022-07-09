# frozen_string_literal: true

class ChangeColumnTypeNameToCategoryName < ActiveRecord::Migration[7.0]
  def change
    rename_column :catalogs, :type, :category
  end
end
