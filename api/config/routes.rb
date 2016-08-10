Rails.application.routes.draw do
  resources :teachers, only: [:index, :show]
  resources :badges, only: [:new, :create]
  resources :votes, only: [:new, :create]

end
