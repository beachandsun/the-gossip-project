Rails.application.routes.draw do
 

  
  get 'comment/content'
  get 'city/show'
  resources :session, only: [:new, :create, :destroy]
  resources :user
  resources :gossip
  resources :author
  resources :login
  resources :city
  get 'home', to: 'gossip#index'
  get 'contact', to: 'contact#show'
  get 'team', to:'team#show'
  get '/', to: 'gossip#index'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end