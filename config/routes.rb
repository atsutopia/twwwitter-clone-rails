Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :users
  resources :timeline, only: :index
  resource :session, only: [:new, :create, :destroy]
  resources :tweets, only: [:new, :create]
end
