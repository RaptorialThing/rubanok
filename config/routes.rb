Rails.application.routes.draw do
  resources :orders
  resources :printers

  devise_for :users, controllers: {registrations: "registrations"}
  get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
