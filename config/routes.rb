Rails.application.routes.draw do
  devise_for :users
  get 'titles/index'
  root to: "titles#index"
end
