Rails.application.routes.draw do
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  post 'signup' => 'users#create'
  delete '/logout' => 'sessions#destroy'
  
  resources :reviews
  resources :users
  resources :consoles
  resources :games do 
    resources :reviews, only: [:new, :index]
  end 

end
