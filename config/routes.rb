Rails.application.routes.draw do
  devise_for :users
  root to: "aircrafts#index"
  resources :aircrafts do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show]
  get 'my_aircraft', to: 'aircrafts#my_aircraft'
end
