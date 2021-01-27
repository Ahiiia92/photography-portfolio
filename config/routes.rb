Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  resources :albums

  root to: "pages#home"
  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'

end
