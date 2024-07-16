Rails.application.routes.draw do
  devise_for :users
  root to: "figures#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :figures, only: [:index, :new, :create, :edit, :show] do
    resources :orders, only: [:new, :create]
  end
  resources :users, only: [:show]
  resources :orders, only: [:index,:show] do
    resources :reviews, only: [:new, :create]
  end
  resources :animes, only: [:show]
end
