Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :articles do
    resources :comments, only: [:new, :create]
  end

  resources :comments, only: [:index, :destroy] do
    member do
      post :approve
      post :ban
    end
  end

  resources :contacts, only: [:new, :create]

  get '/manifeste', to: 'pages#manifeste', as: :manifeste



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
