Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root :to => "pages#enter"
  get 'enter', to: 'pages#enter', as: :enter
  get 'about', to: 'pages#about', as: :about
  get 'confirm_mail', to: 'pages#confirm_mail', as: :confirm_mail
  get 'contact', to: 'pages#contact', as: :contact
  get 'confirm_msg', to: 'pages#confirm_msg', as: :confirm_msg
  get 'all_emails', to: 'pages#all_emails', as: :all_emails
  get 'new_msg', to: 'pages#new_msg', as: :new_msg
  get 'old_msg', to: 'pages#old_msg', as: :old_msg
  

  resources :pricetalk
  resources :mailinglist
  resources :watch
  resources :orders
  # Defines the root path route ("/")
  # root "articles#index"
end
