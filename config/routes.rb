Rails.application.routes.draw do
 

  resources :gossip
  resources :author
  resources :login
  get 'home', to: 'home#show'
  get 'contact', to: 'contact#show'
  get 'team', to:'team#show'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end