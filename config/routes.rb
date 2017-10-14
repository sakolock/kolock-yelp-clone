Rails.application.routes.draw do
  root to: 'pages#front'

  get 'ui(/:action)', controller: 'ui'

  get 'home', to: 'businesses#index'
  get 'register', to: 'users#new'
  get 'sign_in', to: 'sessions#new'
  get 'sign_out', to: 'sessions#destroy'

  resources :businesses, only: [:index, :show] do
    resources :reviews, only: [:create]
  end

  resources :users, only: [:create]
  resources :sessions, only: [:create]
end
