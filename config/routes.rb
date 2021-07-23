Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'sessions#new'
  get '/login', to: 'sessions#new', as: 'login'
  get '/user', to: 'secrets#show', as: 'user'
  post '/', to: 'sessions#create'
  delete '/user/destroy', to: 'sessions#destroy'
  get '/users', to: 'sessions#users'

end
