Rails.application.routes.draw do
  # get '/',to:'twets#index'
  root 'twets#index'
  get '/home',to:'twets#home'
  resources :twets
end
