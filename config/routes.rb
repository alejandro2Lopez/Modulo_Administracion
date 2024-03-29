Rails.application.routes.draw do
  resources :orders
  resources :clients
  resources :dishes
  resources :users
  resources :order_details
  resources :state_types

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  root  'sessions#new'

  scope module: :api, path: 'api' do
    resources :clients
    resources :dishes
    resources :order_details
    resources :users
    resources :orders
  end
end

