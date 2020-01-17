Rails.application.routes.draw do
  devise_for :users

  root to: "airwaybills#index"

  resources :airwaybills, only: [:index, :new, :create]
end
