Rails.application.routes.draw do
  devise_for :users
    root 'articles#index'
    get '/home', to: 'home#home'
    resources :articles do
        resources :comments
    end
end
