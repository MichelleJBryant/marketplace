Rails.application.routes.draw do
  get "/user/:id", to: "user#show", as: 'user'
  post "/comment/:comment_id/reply", to: "reply#create", as: 'reply'

  resources :listings do
    resources :comments
  end

  resources :charges
  resources :searches
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get "about", to: "pages#about"
  get "contact_us", to: "pages#contact"
  root to: 'listings#index'

end
