Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :albums

  root to: "pages#home"
  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'

end
