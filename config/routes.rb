Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :listings do
    resources :comments
  end

  resources :charges
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get "about", to: "pages#about"
  get "contact_us", to: "pages#contact"
  root to: 'listings#index'

end
