Rails.application.routes.draw do
  root :to =>'welcome#index'

  resources :fears
  resources :plans

  devise_for :users

  get "/users/addplan/:id" => "users#addPlan"

  resources :users

  resources :user_plans
  resources :user_jobs

  get "/plans/new/:id" => "plans#new"

end
