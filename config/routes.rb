Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'clients#index', as: 'clients'

  get 'clients/:id', to: 'clients#show', as: 'show_client'
  get 'clients/:client_id/cars/:id', to: 'cars#show', as: 'show_car'
  get 'clients/:client_id/cars/:car_id/visits/:id', to: 'visits#show', as: 'show_visit'
  get 'clients/:client_id/cars/:car_id/visits/:visit_id/services/:id', to: 'services#show', as: 'show_service'

end
