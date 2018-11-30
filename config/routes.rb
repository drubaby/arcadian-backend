Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :machine_issues, only: [:index, :create, :show, :update, :delete]
  resources :location_machines, only: [:index, :show, :create, :delete]
  resources :machines, only: [:index, :show]
  resources :locations, only: [:index, :show]
  get "/machines_at_location/:id", to: "location_machines#find_for_location"
end
