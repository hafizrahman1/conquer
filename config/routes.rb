Rails.application.routes.draw do
  root :to =>'welcome#index'

  resources :fears
  resources :plans

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :registrations => "registrations" }

  get "/users/addplan/:id" => "users#addPlan"

  get "forums", to: "plans#forums"

  resources :users

  resources :user_plans
  resources :user_jobs

  get "/plans/new/:id" => "plans#new"

end
