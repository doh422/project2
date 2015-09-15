Rails.application.routes.draw do

  root "welcome#index"

  get "new" => "users#new"

  post "new" => "users#create"

  get "login" => "users#login"

  get "users/create" => "users#create"

  post "login" => "sessions#create", as: :create_session

  get "sessions/show" => "sessions#show"

  get "sessions/destroy" => "sessions#destroy", as: :destroy_session

  get "teams/new" => "teams#new"

  post "teams/new" => "teams#create", as: :create_team

end
