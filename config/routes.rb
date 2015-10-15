Rails.application.routes.draw do
  resources :subcategories
  devise_for :users
  resources :categories do
   resources :subcategories
end
  resources :comments 
  resources :articles
  resources :users

  get 'articles/new'
  get 'articles/index'
  get 'articles/update'
  get 'articles/show'
  get 'articles/edit'
  get 'articles/create'
  get 'articles/destroy'
  get '/articles/:id/winner', to: 'articles#winner', as: 'article_winner'
  get '/articles/:id/choose', to: 'articles#choose', as: 'article_choose'
  get '/userarticles', to: 'articles#userarticles'


  get 'users/new'
  get 'users/index'
  get 'users/update'
  get 'users/show'
  get 'users/edit'
  get 'users/create'
  get 'users/destroy'
  get '/users/:id/destroy', to: 'users#destroy', as: 'destroy_user'

  get 'categories/:id/recovery', to: 'categories#recovery', as: 'recover_category'

 

  root 'articles#home'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
