Rails.application.routes.draw do
  get 'location_machine/index'
  get 'location_machine/show'
  get 'location_machine/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :machines, only: [:index, :show]
  resources :locations, only: [:index, :show]
end
