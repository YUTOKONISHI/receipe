Rails.application.routes.draw do
  resources :allergens_users
  resources :allergens
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login/index'
  post 'login/auth'
end
