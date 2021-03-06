Rails.application.routes.draw do
 
  root to: 'home#index'
  post '/', to: 'home#index'
  get  '/search', to: 'home#search', as: :search
  get  'users/mypage' ,to: 'users#mypage', as: :mypage
  get  'users/edit', to: 'users#edit'
  get  'users/cancel_membership', to: 'users#cancel_membership', as: :cancel_membership
  post 'users/withdrawal' 
  resources :cooking_steps, param: :cooking_step_id
  resources :receipes, param: :receipe_id, except: [:new, :index] do
    
    collection do
      get ':user_id/new', to: 'receipes#new', as: :new
    end
    
    member do
      post 'add' => 'bookmarks#create'
    delete '/add' => 'bookmarks#destroy'
      post 'new_rating/' => 'receipe_evaluations#create'
    patch 'update_rating/' => 'receipe_evaluations#update'
     end
     
  end
  
  resources :receipe_evaluations, param: :receipe_evaluation_id, except: [:index, :create, :update]
  resources :bookmarks, param: :bookmark_id, except: [:index, :create, :destroy] #except: [:new, :edit, :show, :update, :create, :destroy]
  resources :allergens_ingredients, param: :allergens_ingredients_id, except: [:index]
  resources :ingredients, param: :ingredient_id, except: [:index]
  resources :allergens_replaced_ingredients, param: :allergens_replaced_ingredients_id, except: [:index]
  resources :replaced_ingredients, param: :replaced_ingredient_id#, except: [:index]
  resources :receipe_categories, param: :receipe_category_id, except: [:index]
  resources :allergens_users, param: :allergens_users_id, except: [:index]
  resources :allergens, param: :allergen_id, except: [:index]
  resources :users, param: :user_id, except: [:index] do
    
    collection do
      post 'confirm_new'
      patch 'confirm_edit'
     end
        
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login/index'
  post 'login/auth'
  post 'login/index', to: 'login#logout', as: :logout
 
end
