Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :articles do
    resources :comments, only: [:new, :create, :destroy]
  end

  resources :comments, only: :index

  resources :contacts, only: [:new, :create]

  get '/manifeste', to: 'pages#manifeste', as: :manifeste



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
