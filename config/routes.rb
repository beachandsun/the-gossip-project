Rails.application.routes.draw do
 
  get 'home', to: 'home#show'
  get 'contact', to: 'contact#show'
  get 'team', to:'team#show'
  get 'login/:id', to: 'login#show'
  get 'author/:id', to: 'author#show', as: 'author_of_gossip'
  get 'gossip/:id', to: 'gossip#show', as: 'my_gossip'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end