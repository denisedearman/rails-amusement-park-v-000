Rails.application.routes.draw do
  root 'static_pages#home'
  get '/signin' => 'sessions#new'
  get '/signout' => 'sessions#destroy'
  post '/sessions/create' => 'sessions#create'
  post '/rides/new' => 'rides#new'
  resources :users
  resources :attractions


end
