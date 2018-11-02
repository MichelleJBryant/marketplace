Rails.application.routes.draw do
  resources :listings do
    resources :comments
    resources :charges, only: [:new, :create]
  end

  resources :charges
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get "about", to: "pages#about"
  get "contact_us", to: "pages#contact"
  root to: 'listings#index'

end
