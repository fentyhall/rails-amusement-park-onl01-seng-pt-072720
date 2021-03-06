Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#home'

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'

  delete '/sessions/', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :attractions
  resources :rides
end