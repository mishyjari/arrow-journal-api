Rails.application.routes.draw do

  resources :users, only: [:index, :create, :show]

  resources :journals, only: [:show]

  resources :tasks, only: [:index, :create]

  resources :events, only: [:index, :create]

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/users/:id/journal', to: 'users#journal'

end
