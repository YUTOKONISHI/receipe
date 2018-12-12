Rails.application.routes.draw do
 
  get  'users/mypage' ,to: 'users#mypage', as: :mypage
  get  'users/edit', to: 'users#edit'
  
  resources :receipe_evaluations, param: :receipe_evaluation_id
  resources :cooking_steps, param: :cooking_step_id
  resources :receipes, param: :receipe_id, except: [:new] do
    post 'add' => 'bookmarks#create'
    delete '/add' => 'bookmarks#destroy'
    collection do
      get ':user_id/new', to: 'receipes#new', as: :new
    end
    
    member do
     #post 'add' => 'bookmarks#create'
     end
     
  end
  
  resources :bookmarks, param: :bookmark_id, except: [:new, :edit, :show]
  resources :allergens_ingredients, param: :allergens_ingredients_id
  resources :ingredients, param: :ingredient_id
  resources :allergens_replaced_ingredients, param: :allergens_replaced_ingredients_id
  resources :replaced_ingredients, param: :replaced_ingredient_id
  resources :receipe_categories, param: :receipe_category_id
  resources :allergens_users, param: :allergens_users_id
  resources :allergens, param: :allergen_id
  resources :users, param: :user_id do
    
    collection do
      post 'confirm_new'
      patch 'confirm_edit'
     end
        
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login/index'
  post 'login/auth'
  post 'login/index', to: 'login#logout', as: :logout
 
  get  'users/cancel_membership', to: 'users#cancel_membership', as: :cancel_membership
  post 'users/withdrawal'

end
