Rails.application.routes.draw do
  devise_for :users
  get 'titles/index'
  root to: "titles#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
