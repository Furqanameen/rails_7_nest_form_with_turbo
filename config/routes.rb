Rails.application.routes.draw do
  resources :live_streams
  # resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :products, only: [], param: :index do
    member do
      delete '(:id)' => "products#destroy", as: ""
      post '/' => "products#create"
    end
  end
end
