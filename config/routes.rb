Rails.application.routes.draw do

  resources :users, only: [:index, :create, :show]

  resources :journals, only: [:show]

  resources :tasks, only: [:index, :create, :update, :destroy]

  resources :events, only: [:index, :create, :update, :destroy]

  resources :memos, only: [:index, :show, :create, :update, :destroy]


  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/users/:id/journal', to: 'users#journal'

end
