Rails.application.routes.draw do

  resources :users, only: [:index, :create]

  resources :journals, only: [:show]

  resources :tasks, only: :index

  resources :events, only: [:index, :create]

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

end
