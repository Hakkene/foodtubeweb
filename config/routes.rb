Rails.application.routes.draw do
  root to: 'static#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

 



  resources :reviews
  resources :recipes
  resources :users
  resources :ingredients
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
