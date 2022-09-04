Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root :to => "pages#index"
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
  get 'confirm_msg', to: 'pages#confirm_msg', as: :confirm_msg
  resources :pricetalk
  resources :watch
  resources :orders
  # Defines the root path route ("/")
  # root "articles#index"
end
