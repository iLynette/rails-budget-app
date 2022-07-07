Rails.application.routes.draw do
  devise_for :users
  resources :payments
  resources :categories
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'categories#index'
end
