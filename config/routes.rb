Rails.application.routes.draw do
  resources :listings
  devise_for :users

  post 'listings/add_comment'

  root to: 'listings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
