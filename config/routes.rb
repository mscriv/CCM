Rails.application.routes.draw do



  resources :invoices

  resources :line_items


  resources :sessions
  resources :users

  resources :posts do
  resources :comments
  end

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


  get 'pages/about'

  get 'pages/contact'

  get 'pages/small_businesses'

  get 'pages/corporate'

  get 'pages/government'

  get 'welcome/index'



  root 'welcome#index'





end
