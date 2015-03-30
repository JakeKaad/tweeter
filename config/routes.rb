Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"

  resources :users, only: [:show]
  resources :tweets, only: [:create]
end
