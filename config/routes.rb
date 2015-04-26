Rails.application.routes.draw do
  get 'sessions/create'

  get '/auth/facebook/callback' => 'sessions#create'

  resources :projects

  root 'home#index'
end
