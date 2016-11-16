Rails.application.routes.draw do
  root :to =>'welcome#index'

  resources :fears
  resources :tasks

  devise_for :users
  get '/users/:id', to: "users#show", as: "user"

  get "/users/addtask/:id" => "users#addtask"
  get "/tasks/new/:id" => "tasks#new"

end
