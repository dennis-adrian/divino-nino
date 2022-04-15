Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "main_page#index"

  get 'hello_world', to: 'hello_world#index'
  resources :patients, :path => :pacientes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
