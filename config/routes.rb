Rails.application.routes.draw do
  resources :powers, only: [:index, :edit, :show, :new]
  resources :heroines, only: [:index, :edit, :show, :new]  
end
