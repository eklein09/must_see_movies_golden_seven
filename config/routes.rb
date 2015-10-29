Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'movies#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get '/' => 'movies#index'
  get '/movies/' => 'movies#index'
  get '/movies/new_form' => 'movies#new_form'
  get '/movies/create_row' => 'movies#create_row'
  get '/movies/:id' => 'movies#show'
  get '/movies/delete_movie/:id' => 'movies#delete_row'
  get '/movies/:id/edit_form' => 'movies#edit_form'
  get '/movies/:id/edit_row' => 'movies#edit_row'

  get '/directors/' => 'directors#index'
  get '/directors/new_form' => 'directors#new_form'
  get '/directors/create_row' => 'directors#create_row'
  get '/directors/:id' => 'directors#show'
  get '/directors/delete_movie/:id' => 'directors#delete_row'
  get '/directors/:id/edit_form' => 'directors#edit_form'
  get '/directors/:id/edit_row' => 'directors#edit_row'

  get '/actors/' => 'actors#index'
  get '/actors/new_form' => 'actors#new_form'
  get '/actors/create_row' => 'actors#create_row'
  get '/actors/:id' => 'actors#show'
  get '/actors/delete_movie/:id' => 'actors#delete_row'
  get '/actors/:id/edit_form' => 'actors#edit_form'
  get '/actors/:id/edit_row' => 'actors#edit_row'

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
