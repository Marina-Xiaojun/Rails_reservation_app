Rails.application.routes.draw do
  get "rooms/index"
  root "home#top"
  get "rooms" => "rooms#index"
  post "rooms" => "rooms#create"
  get "my_rooms" => "rooms#my_rooms", as: :my_rooms
  get "rooms/new" => "rooms#new", as: :new_room
  get "rooms/:id" => "rooms#show", as: :room # 部屋詳細の

  get "account" => "users#account", as: :account # アカウントの
  get "profile" => "users#profile", as: :profile
  patch "profile" => "users#profile_update", as: :profile_update
  get "profile/edit" => "users#profile_edit", as: :profile_edit


  patch "account/edit" => "users#account_update", as: :account_update

  get "account/edit" => "users#account_edit", as: :account_edit

  get "my_reservations" => "reservations#my_reservations", as: :my_reservations


  post "rooms/:room_id/reservations" => "reservations#create", as:
  :room_reservations
  get "rooms/:room_id/reservations/confirm" => "reservations#confirm", as: :confirm_room_reservation


  get "users/new"
  devise_for :users, controllers: {
  registrations: "users/registrations"
}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
