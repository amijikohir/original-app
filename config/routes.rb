Rails.application.routes.draw do
  devise_for :users
  get 'titles/index'
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create] do
    resources :titles, only: [:index, :create]
  end
end
