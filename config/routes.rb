Rails.application.routes.draw do

  root "welcome#index"

  get "new" => "users#new"

  post "new" => "users#create"

  get "login" => "users#login"

  get "users/create" => "users#create"

  post "login" => "sessions#create", as: :create_session

  get "users/show" => "sessions#new"

  get "sessions/destroy" => "sessions#destroy"

end
