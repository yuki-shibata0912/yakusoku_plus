Rails.application.routes.draw do
  root "home#index"

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  #主催者(管理画面)
  namespace :dashboard do
    resources :availabilities, only: [:index, :new, :create]
  end

  #公開(予約者が見るページ)
  namespace :u do
    resources :users, only: [] do
      resources :availabilities, only: [:index], module: :public
    end
  end

  #予約作成(予約枠に紐付け)
  resources :availabilities, only: [] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show]
end