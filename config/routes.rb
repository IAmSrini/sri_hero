Rails.application.routes.draw do
  resources :hero1s

  resources :heros

  resources :users

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'users#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'index' => 'users#index'
  get 'display_page' => 'users#display_page'
  get 'pay_schedule' => 'users#pay_schedule'
  get 'display_page_in_hero' => 'heros#display_page_in_hero'
  get 'new_edit' => 'heros#new_edit'
  post 'new_edit' => 'heros#new_edit'
  get 'fullyear' => 'users#fullyear'
  get 'march' => 'users#march'
  get 'april' => 'users#april'
  get 'may' => 'users#may'
  get 'june' => 'users#june'
  get 'july' => 'users#july'
  get 'august' => 'users#august'
  get 'september' => 'users#september'
  get 'october' => 'users#october'
  get 'november' => 'users#november'
  get 'december' => 'users#december'
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
