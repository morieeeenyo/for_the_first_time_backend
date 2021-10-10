Rails.application.routes.draw do
  resources :posts, only: [:index, :create]
  namespace :api do
    resources :users, only: :create
  end
end
