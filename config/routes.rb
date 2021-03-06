Rails.application.routes.draw do

  root 'welcome#index'

  get    'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'ranking/have' => 'ranking#have', as: 'rank_have'
  get 'ranking/want' => 'ranking#want', as: 'rank_want'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :ownerships, only: [:create, :destroy]
  resources :items , only: [:new , :show]

end
