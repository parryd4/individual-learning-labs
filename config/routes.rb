Rails.application.routes.draw do
  resources :materials
  resources :users
  resources :labs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root('welcome#index')

  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy', as: 'logout'
end
