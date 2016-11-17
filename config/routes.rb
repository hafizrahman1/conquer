Rails.application.routes.draw do
  root :to =>'welcome#index'

  resources :fears
  resources :plans

  devise_for :users


  get '/users/:id', to: "users#show", as: "user"

  get "/users/addplan/:id" => "users#addPlan"

  resources :users

  resources :user_plans

  get "/plans/new/:id" => "plans#new"

end
