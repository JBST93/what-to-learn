Rails.application.routes.draw do
  get 'reviews/create'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "/users/my_enrollments", to: "users#my_enrollments", as: "user_enrollments"
  get "/users/profile", to: "users#profile", as: "user_profile"

  resources :courses do
    resources :enrollments, only: [:new, :create]
    resources :reviews, only: [:index]

  end
  resources :enrollments, only: [:index, :show, :destroy]

  resources :users
end
