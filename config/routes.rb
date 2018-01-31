Rails.application.routes.draw do
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'users/new'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  root 'home#index'
  resources :tasks

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
