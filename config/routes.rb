Rails.application.routes.draw do

  root :to => 'todo_lists#index'
  resources :todo_lists do
    resources :todo_items
  end

  resources :sessions, only: [:new, :create, :destroy]

  get '/accounts' => "accounts#index", as: "accounts_path"
  get '/todo_lists' => "todo_lists#index", as: "todo_lists_path"
  get '/login' => "sessions#new", as: "login"
  delete '/logout' => "sessions#destroy", as: "logout"
end
