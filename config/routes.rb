Rails.application.routes.draw do
  get '/cart', to: 'cart#show'

  root controller: :landing, action: :index


end
