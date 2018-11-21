Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :location_machines, only: [:index, :show, :create, :destroy]
  resources :machines, only: [:index, :show]
  resources :locations, only: [:index, :show]
end
