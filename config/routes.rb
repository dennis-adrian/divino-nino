Rails.application.routes.draw do
  resources :doctors
  resources :drugs
  # Defines the root path route ("/")
  root "main_page#index"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'hello_world', to: 'hello_world#index'
  resources :patients, :path => :pacientes
  resources :specialties, :path => :especialidades
end
