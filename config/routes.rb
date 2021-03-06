Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'clients#index', as: 'clients'

  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'clients/new', to: 'clients#new', as: 'new_client'
  post '/', to: 'clients#create'
  get 'clients/:id', to: 'clients#show', as: 'show_client'  
  post 'clients', to: 'client#create'
  get 'clients/:client_id/cars', to: 'cars#client_cars', as: 'cars'
  get 'clients/:client_id/cars/new', to: 'cars#new', as: 'new_car'
  post 'clients/:client_id/cars', to: 'cars#create'
  get 'clients/:client_id/cars/:id', to: 'cars#show', as: 'show_car'
  get 'clients/:client_id/cars/:car_id/visits/:id', to: 'visits#show', as: 'show_visit'
  get 'clients/:client_id/cars/:car_id/visits/:visit_id/services/:id', to: 'services#show', as: 'show_service'
  get 'workers', to: 'workers#index'
  get 'workers/:id', to:'workers#show', as: 'show_worker'
  get 'client/:encrypt', to:'clients#pavyko'


end
