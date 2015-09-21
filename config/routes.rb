Rails.application.routes.draw do

  root "welcome#index"

  get "new" => "users#new"

  post "new" => "users#create"

  get "login" => "users#login"

  get "users/create" => "users#create"

  post "login" => "sessions#create", as: :create_session

  get "sessions/show" => "sessions#show"

  get "sessions/destroy" => "sessions#destroy", as: :destroy_session

  get "teams/new" => "teams#new", as: :new_team

  post "teams/new" => "teams#create", as: :create_team

  get "teams/index" => "teams#index"

  get "teams/:id/edit" => "teams#edit", as: :edit_team

  patch "teams/:id/edit" => "teams#update", as: :update_team

  get "players/list" => "players#index"

  get "players/:id" => "players#show", as: :player

  get "players/:id/create" => "rosters#create", as: :create_roster

  get "teams/:id" => "teams#show", as: :team

  delete "players/:id" => "rosters#delete", as: :delete_roster

  namespace :api do
    resources :players, only: [:index, :show]
  end

end
