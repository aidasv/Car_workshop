Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'clients#index'

  get 'clients/:id', to: 'clients#show', as: 'show_client'
  get 'cars/:id', to: 'cars#show', as: 'show_car'
  get 'visits/:id', to: 'visits#show', as: 'show_visit'

end
