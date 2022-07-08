Rails.application.routes.draw do
  devise_for :users
  resources :payments
  resources :categories
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  unauthenticated do
     root 'users#index'
    end

    authenticated do
      root 'categories#index', as: :authenticated_root
    end
end
