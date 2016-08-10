Rails.application.routes.draw do
  root 'teachers#index'
  resources :teachers
end
