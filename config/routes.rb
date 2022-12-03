Rails.application.routes.draw do
  devise_for :users
  root to: "aircrafts#index"
  resources :aircrafts
  get 'my_aircraft', to: 'aircrafts#my_aircraft'
  resources :bookings
end
