Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'clients#index', as: 'clients'

  get 'clients/:id', to: 'clients#show', as: 'show_client'
  get 'clients/:client_id/cars', to: 'cars#client_cars', as: 'cars'
  get 'clients/:client_id/cars/new', to: 'cars#new', as: 'new_car'
  post 'clients/:client_id/cars', to: 'cars#create'
  get 'clients/:client_id/cars/:id', to: 'cars#show', as: 'show_car'
  get 'clients/:client_id/cars/:car_id/visits/:id', to: 'visits#show', as: 'show_visit'
  get 'clients/:client_id/cars/:car_id/visits/:visit_id/services/:id', to: 'services#show', as: 'show_service'
  get 'workers', to: 'workers#index'
  get 'workers/:id', to:'workers#show', as: 'show_worker'


end
