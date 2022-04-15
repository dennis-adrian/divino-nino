Rails.application.routes.draw do
  resources :clients
  resources :invoices
  resources :reservations
  resources :reservation_fees
  resources :contraceptives
  resources :contraceptive_types
  resources :schedules
  resources :offices
  resources :doctors
  resources :drugs
  # Defines the root path route ("/")
  root "main_page#index"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'hello_world', to: 'hello_world#index'
  resources :patients
  resources :specialties
end
