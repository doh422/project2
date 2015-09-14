Rails.application.routes.draw do

  root "welcome#index"

  get "users/new" => "users#new"

  get "users/login" => "users#login"

  get "users/show" => "users#show"

end
