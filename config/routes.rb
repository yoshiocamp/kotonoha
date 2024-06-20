Rails.application.routes.draw do
  root to: 'kotobas#index'
  resources :tweets, only: :index
end
