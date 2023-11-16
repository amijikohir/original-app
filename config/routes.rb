Rails.application.routes.draw do
  get 'titles/index'
  root to: "titles#index"
end
