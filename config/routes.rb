Rails.application.routes.draw do

  # API Routes
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :contacts
    end
  end

  # Devise User Routess
  devise_for :users


  root "contacts#index"
  resources :contacts
  
end
