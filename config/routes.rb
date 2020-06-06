Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  resources :albums

  root to: "pages#home"
    get 'pages/dashboard'
end
