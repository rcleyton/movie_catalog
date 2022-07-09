# frozen_string_literal: true

module Api
  module V1
    class CatalogsController < ApplicationController
      def index
        @catalogs = Catalog.all.order(:release_year)
        render json: @catalogs, status: :ok
      end

      def upload
        Catalog.upload(params[:file])
      end
    end
  end
end
