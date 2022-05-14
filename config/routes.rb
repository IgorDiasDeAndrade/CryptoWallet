Rails.application.routes.draw do
  resources :mining_types
  get 'welcome/index'
  resources :coins #define os recursos de get, post, put, delete, todos de uma vez

  root to:"welcome#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end