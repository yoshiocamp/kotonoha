Rails.application.routes.draw do
  devise_for :users
  root to: 'kotobas#index'
  resources :kotobas do
    member do
      post :delete_item
    end
  end
  resources :users, only: :show
end
