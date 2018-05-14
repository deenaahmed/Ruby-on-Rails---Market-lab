Rails.application.routes.draw do
  # resources :products
  resources :products do
    member do
      get '/products/:id/addtofav', to: 'products#addtofavorite', as: 'addtofav'
      get '/products/:id/addedtofav', to: 'products#addedtofavorite', as: 'added'
    end
  end
  resources :categories
  resources :countries
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
