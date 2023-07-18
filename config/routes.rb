Rails.application.routes.draw do
  resources :posts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'articles#index'
  get '/home', to: 'home#home'
  resources :articles do
    resources :comments
  end
end
