Rails.application.routes.draw do
  get 'teachers/index'

  get 'teachers/show'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # root 'index'
  resources :teachers, only: [:index, :show]
  resources :badges, only: [:create, :update]
end
