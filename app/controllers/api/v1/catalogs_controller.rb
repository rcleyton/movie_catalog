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

      def search
        @catalogs = Catalog.where('release_year like ? OR category like ?',
                                  "%#{params[:q]}%", "%#{params[:q]}%")
        render json: @catalogs.order(:release_year), status: :ok
      end
    end
  end
end
