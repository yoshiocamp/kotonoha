Rails.application.routes.draw do
  devise_for :users
  root to: 'kotobas#index'
  resources :kotobas 
    
end
