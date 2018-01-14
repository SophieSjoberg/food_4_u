Rails.application.routes.draw do
  get '/cart', to: 'cart#show'
  root controller: :restaurants, action: :index
  resources :restaurants, only: [:show, :index]
end
