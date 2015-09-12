Rails.application.routes.draw do

  # API Routes
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :contacts, only: [:index, :create, :update, :destroy]
      resources :users, only: [] do 
        resources :contacts, only: [:index]
      end
    end
  end

  # Devise User Routess
  devise_for :users

  resources :contacts


  root "contacts#index"

end
