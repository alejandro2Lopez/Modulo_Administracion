Rails.application.routes.draw do
  resources :state_types
  resources :orders
  resources :clients
  resources :dishes
  resources :users
  resources :order_details
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  root  'sessions#new'

  scope module: :api, path: 'api' do
    resources :clients
    resources :dishes
    resources :order_details
    resources :users
  end
end

