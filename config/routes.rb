Rails.application.routes.draw do
  root 'orders#index'
  resources :orders
  resources :masters
  resources :providers
end
