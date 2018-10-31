Rails.application.routes.draw do
  resources :listings
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  post 'listings/add_comment'

  root to: 'listings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "about", to: "pages#about"
  get "contact_us", to: "pages#contact"

end
