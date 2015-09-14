Rails.application.routes.draw do

  root "welcome#index"

  get "users/new" => "users#new"

end
