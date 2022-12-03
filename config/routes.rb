Rails.application.routes.draw do
  devise_for :users
  root to: "aircrafts#index"
  resources :aircrafts
  resources :bookings
end
