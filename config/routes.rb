Rails.application.routes.draw do
  devise_for :users
  root to: "aircrafts#index"
  resources :aircrafts
<<<<<<< HEAD
=======
  get 'my_aircraft', to: 'aircrafts#my_aircraft'
>>>>>>> master
  resources :bookings
end
