Rails.application.routes.draw do
  get "users/new"

  get "signup", to: "users#new"
  post "users", to: "users#create"

  root "home#index"
  get "home/index"

  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest


end
