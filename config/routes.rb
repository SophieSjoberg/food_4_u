Rails.application.routes.draw do
  root controller: :landing, action: :index

  resources :cart
end
