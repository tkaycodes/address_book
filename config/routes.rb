Rails.application.routes.draw do

  # API Routes
  namespace :api, defaults: {format: :json} do
    namespace :v1 do

      resources :users, only: [:index, :create, :show, :update, :destroy]
      
      # list all contacts for a particular user
      get '/users/:id/contacts' => 'users#index', as: :user_contacts

    end
  end


  # Devise User Routess
  devise_for :users


  # Contact Routes
  resources :contacts, only: [:index, :new, :create]

  root "contacts#index"

end
