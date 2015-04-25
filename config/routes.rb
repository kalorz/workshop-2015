Rails.application.routes.draw do
  get 'projects/index'

  get 'projects/show'

  get 'projects/index'

  resources :projects

  root 'home#index'
end
