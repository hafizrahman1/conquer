Rails.application.routes.draw do
  root :to =>'welcome#index'

  resources :fears
  resources :plans

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :registrations => "registrations" }

  get '/users/:id', to: "users#show", as: "user"

  get "/users/addplan/:id" => "users#addplan"

  resources :users

  get "/plans/new/:id" => "plans#new"

end
