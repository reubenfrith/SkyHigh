Rails.application.routes.draw do
  devise_for :users

  root to: "aircrafts#index"

  resources :aircrafts do
    resources :bookings, only: %i[new create]

    collection do
      get :my_aircraft
    end
  end

  resources :bookings, only: %i[show index edit delete]
end
