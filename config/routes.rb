Rails.application.routes.draw do
  resources :posts, only: [:index, :create]
  namespace :api do
    namespace :users do
      resources :registrations, only: :create
    end
  end
end
