Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'synestesie', to: 'pages#synestesie'
  get 'about', to: 'pages#about'
  get 'start', to: 'pages#start'
  get 'contact', to: 'pages#contact'
  get 'legal', to: 'pages#legal'
  get 'blog', to: 'pages#blog'
  get  'hiraganas-mix', to: 'pages#hiraganas_mix'

  root to: 'pages#home'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :courses, only: [:show] do
    resources :chapters, only: [:show] do
      resources :items, only: [:show]
    end
  end

    resources :posts

    resources :hiraganas





  get 'courses', to: 'courses#index'


end





  # resources :courses do
  #     resources :chapters do
  #       resources :items
  #     end
  #   end


 # get 'courses/:id' => 'courses#show', as: :courses_show
  #   get 'chapters/show'
  #     get 'items/show'


  # resources: :courses, only: [:show], path: "" do
  #   resources: :chapters, only: [:show], path: "" do
  #     resources: :items, only: [:show], path: ""
  #   end


  # root to: 'courses#index'
  # devise_for :users

  # resources :courses, only: [:show], path: "" do # => TODO: friendly-id
  #   resources :chapters, only: [:show], path: "" do # => TODO: add simply the name
  #     resources :items, only: [:show], path: "" # => friendly-id
  #   end
  # end

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

