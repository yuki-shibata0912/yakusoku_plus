Rails.application.routes.draw do
  # トップページ
  root "home#index"

  # 予約（現在動いている最低限）
  resources :reservations, only: [:index, :new, :create, :edit, :update, :destroy]

  # Rails標準
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end