Rails.application.routes.draw do
  devise_for :users
  resources :aircrafts
  root to: "aircrafts#index"
end
