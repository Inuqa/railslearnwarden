Rails.application.routes.draw do
  resources :products, only: %i[index show]
  namespace :admin do
    resources :products, only: %i[new create destroy]
  end
  root 'home#index'
  resources :users
  resources :sessions, only: %i[new create destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
