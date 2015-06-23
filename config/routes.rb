Rails.application.routes.draw do


  resources :memberships

  resources :newsletters

  resources :subscribers

  get 'dashboards/show'

  resources :messages
  resources :invoices

  resources :line_items


  resources :sessions
  resources :users

  resources :posts do
  resources :comments
  end

  resources :users do
   collection do
     post 'search', to: 'users#search'
   end
  end

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


  get 'pages/about'

  get 'pages/leadership'

  get 'pages/contact'

  get 'pages/small_businesses'

  get 'pages/corporate'

  get 'pages/government'

  get 'welcome/index'
  get 'pages/core_values'
  get 'pages/services'
  get 'pages/company_profile'



  root 'welcome#index'





end
