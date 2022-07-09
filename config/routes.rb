# frozen_string_literal: true

Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :catalogs, only: %i[index] do
        collection do
          post 'upload'
          get 'search'
        end
      end
    end
  end
end
