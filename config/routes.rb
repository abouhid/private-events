Rails.application.routes.draw do
  resources :users
  resources :events
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  post '/logout' => 'sessions#destroy'


  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/created-events' => 'users#index'
  get '/events-attended' => 'users#show'

  get '/attendees' => 'events#show'

  root "events#index"
end
  