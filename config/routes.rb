Rails.application.routes.draw do
  resources :course_modules, only: [:index, :show]

  get "course_modules/index"
  root "home#index"

  get "signup", to: "users#new", as: :signup
  post "users", to: "users#create"

  get "login", to: "sessions#new", as: :login
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy", as: :logout

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end