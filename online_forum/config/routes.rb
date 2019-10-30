Rails.application.routes.draw do
  resources :comments
  resources :questions
  root 'home#index'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'ask', to: 'questions#new', as: 'ask'
  get 'showall', to: 'questions#show_all', as: 'showall'
end