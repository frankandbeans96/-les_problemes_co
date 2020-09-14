Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :articles

  get '/manifeste', to: 'pages#manifeste', as: :manifeste
  get '/contact', to: 'pages#contact', as: :contact
  get '/home', to: 'pages#home', as: :home



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
