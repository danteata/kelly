Kelly::Application.routes.draw do


  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  get "fuel_intakes/new"

  get "fuel_intakes/index"

  get "fuel_intakes/edit"

  get "fuel_intakes/show"

  get "fuel_refills/new"

  get "fuel_refills/index"

  get "fuel_refills/edit"

  get "fuel_refills/show"

  get "fuels/new"

  get "fuels/edit"

  get "fuels/show"

  get "fuels/index"

  get "fuel_managers/new"

  get "fuel_managers/edit"

  get "fuel_managers/show"

  get "fuel_managers/index"

  get "sign_in" => "sessions#new", :as => "sign_in"
  get "sign_out" => "sessions#destroy", :as => "sign_out"
  get "sessions/new"

  get "profiles/new"

  get "profiles/show"

  get "profiles/index"

  get "profiles/edit"

  get "supervisors/new"

  get "supervisors/edit"

  get "supervisors/show"

  get "supervisors/index"


  get "drivers/new"

  get "drivers/edit"

  get "drivers/show"

  get "drivers/index"

  get "managers/new"

  get "managers/show"

  get "managers/edit"

  resources :managers
  resources :fuel_managers
  resources :drivers
  resources :supervisors
  resources :fuels
  resources :equipment
  resources :fuel_intakes
  resources :fuel_refills

  resources :sessions

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
