Rails.application.routes.draw do
 
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/new'
  root 'users#home'
  resources :users
  resources :events
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
