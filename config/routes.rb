Rails.application.routes.draw do
  get "reservations/index"
  get "reservations/new"
  get "reservations/create"
  
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  resources :reservations, only: [:index, :new, :create]
end
