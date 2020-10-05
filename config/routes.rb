Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root 'home#index'
  get '/change_password', to: 'users/change_password#index', as: 'change_password'
  resources :user, only: [:show]
  resources :events
end
