Rails.application.routes.draw do
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  post 'signup' => 'users#create'
  delete '/logout' => 'sessions#destroy'
  resources :users
  # resources :consoles
  resources :games
end
