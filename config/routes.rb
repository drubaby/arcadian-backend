Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :machine_issues, only: [:index, :create, :show, :update, :destroy]
  resources :location_machines, only: [:index, :show, :create, :update, :destroy]
  resources :machines, only: [:index, :show]
  resources :locations, only: [:index, :show]
  get "/machines_at_location/:id", to: "location_machines#find_for_location"
  post "/update_location_by_issue", to: "machine_issues#update_location_by_issue"

  # resources :location_machines do
  #   resources :machine_issues, only: [:index, :create, :show, :update, :delete]
  # end
end
