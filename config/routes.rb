Rails.application.routes.draw do
  resources :heroines
  resources :powers
  resources :powers, only: [:index]
  resources :heroines, only: [:index]  
end
