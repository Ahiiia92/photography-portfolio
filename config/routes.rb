Rails.application.routes.draw do
  devise_for :users

  resources :albums

  root to: "pages#home"
    get 'pages/dashboard'
end
