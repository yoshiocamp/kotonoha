Rails.application.routes.draw do
  root to: 'kotobas#index'
  resources :kotobas, only: [:index, :new, :create]
end
