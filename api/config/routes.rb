Rails.application.routes.draw do

  resources :teachers, only: [:index, :show]
  resources :badges, only: [:create, :update]
end
