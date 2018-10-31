Rails.application.routes.draw do
  resources :listings
  devise_for :users
  resources :charges
  post 'listings/add_comment'
  get "about", to: "pages#about"
  get "contact_us", to: "pages#contact"
  root to: 'listings#index'

end
