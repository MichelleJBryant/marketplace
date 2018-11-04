Rails.application.routes.draw do
  resources :listings do
    resources :comments do
      resources :replies, only: [:create]
    end
  end

  resources :charges
  resources :searches
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get "about", to: "pages#about"
  get "contact_us", to: "pages#contact"
  root to: 'listings#index'

end
