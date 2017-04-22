Rails.application.routes.draw do
 

    
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'
    
  get 'sessions/new'
  get 'users/new'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :pizzas
    
  resources :users
    
  resource :cart, only: [:show]
    
  resources :order_items, only: [:create, :update, :destroy]

  post '/checkname', to: 'users#namecheck'
  post '/checkemail', to: 'users#emailcheck'
    
  root 'welcome#index'
end
