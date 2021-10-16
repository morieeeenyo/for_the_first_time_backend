Rails.application.routes.draw do
  namespace :api do
    resources :posts, only: [:index, :create]
    resources :users, only: :create
  end
end
