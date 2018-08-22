Rails.application.routes.draw do
  get 'sessions/new'

  # get '/',to:'twets#index'
  root 'twets#index'
  get '/home',to:'twets#home'
  resources :sessions, only: [:new, :create, :destroy]
  resources :twets
  resources :users
end
