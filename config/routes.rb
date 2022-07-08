Rails.application.routes.draw do

  resources :genres
  resources :books

  get 'main/index'
  root to: 'main#index'

end
