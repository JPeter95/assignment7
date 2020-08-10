Rails.application.routes.draw do

  root :to => 'users#index'
  resources :users

  resources :sessions, only: [:new, :create, :destroy]

  get '/users' => "users#new", as: "users_list"
  get '/login' => "sessions#new", as: "login"
  delete '/logout' => "sessions#destroy", as: "logout"
end
