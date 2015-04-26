Rails.application.routes.draw do
  get 'projects/index'

  get 'projets/show'

  resources :projects

  root 'home#index'
end
