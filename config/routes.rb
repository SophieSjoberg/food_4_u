Rails.application.routes.draw do
  get 'cart/show'

  root controller: :landing, action: :index
end
