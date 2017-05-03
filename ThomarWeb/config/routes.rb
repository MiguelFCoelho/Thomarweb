Rails.application.routes.draw do
  get 'home/index'

  get 'home/index'
  devise_for :users, controllers: { sessions: 'users/sessions'}
  resources :categories
  resources :pois
  resources :accesses
  resources :beacons
  resources :monuments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
end
