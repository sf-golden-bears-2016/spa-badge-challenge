Rails.application.routes.draw do
  resources :students do
    resources :badges do
      resources :votes
    end
  end
end
