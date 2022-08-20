Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root :to => "pages#index"
  resources :pricetalk
  resources :poker
  resources :watch
  # Defines the root path route ("/")
  # root "articles#index"
end
