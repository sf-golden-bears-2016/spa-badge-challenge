Rails.application.routes.draw do

  resources :students do
    resources :badges
  end

end
