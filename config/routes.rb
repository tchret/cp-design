Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  root to: 'projects#index'

  resources :projects, only: [:show]

  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'clients' => 'pages#client'


end
