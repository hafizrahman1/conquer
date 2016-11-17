Rails.application.routes.draw do
  root :to =>'welcome#index'

  resources :fears
  resources :plans

  get "/users/sign_out" => "sessions#destroy"
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }


  # get "/users/sign_out" => "sessions#destroy"
  # get "/users/sign_out" => "sessions#destroy"

  get '/users/:id', to: "users#show", as: "user"

  get "/users/addplan/:id" => "users#addplan"


  resources :users

  get "/plans/new/:id" => "plans#new"

end
