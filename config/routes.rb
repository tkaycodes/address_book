Rails.application.routes.draw do

  devise_for :users
  root "contacts#index"

  resources :contacts
  
end
