Rails.application.routes.draw do
  #get 'tasks/index'
  #get 'tasks/create'
  #get 'tasks/show'
  #get 'tasks/new'
  #get 'tasks/edit'
  # post 'tasks/' => 'tasks#create'


  root 'home#index'
  resources :tasks

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
