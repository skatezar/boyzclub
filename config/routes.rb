Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root :to => "watch#index"
  get 'about', to: 'pages#about', as: :about
  resources :pricetalk
  resources :poker
  resources :watch
  # Defines the root path route ("/")
  # root "articles#index"
end
