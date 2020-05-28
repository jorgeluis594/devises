Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show
  get '/my_profile', to: 'users#show'
  root to: 'home#index'
end
