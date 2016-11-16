Rails.application.routes.draw do
  root :to =>'welcome#index'

  resources :fears
  resources :tasks

  get "/users/sign_out" => "sessions#destroy"
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }


  # get "/users/sign_out" => "sessions#destroy"
  # get "/users/sign_out" => "sessions#destroy"

  get '/users/:id', to: "users#show", as: "user"

  get "/users/addtask/:id" => "users#addtask"


  resources :users

  get "/tasks/new/:id" => "tasks#new"

end
