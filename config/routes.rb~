Myapp::Application.routes.draw do



get 'pages/home' => 'pages#home'
root 'pages#home'

get '/teams' => 'teams#index'
get 'teams/stats' => 'teams#stats'
get '/players/stats' => 'players#stats'
get '/teams/:id' => 'teams#show', as: :team
get '/players/:id' => 'players#show', as: :player
get '/teams/:id/edit' => 'teams#edit', :as => :teams_edit
get '/players' => 'players#index'
patch '/teams/:id' => 'teams#update'
get '/players/:id/edit' => 'players#edit', :as => :players_edit
patch '/players/:id' => 'players#update'
get '/players/stats/new' => 'players#new', :as => :players_new
post '/players' => 'players#create'



get '/stories' => 'stories#index'
get '/stories/:id' => 'stories#show', as: :story
get '/stories/:id/edit' => 'stories#edit', :as => :stories_edit
patch 'stories/:id' => 'stories#update'
get '/stories/blah/new' => 'stories#new', :as => :stories_new
post '/stories' => 'stories#create'


  get "teams/new"
  get "teams/delete"	

  get "stories/index"
  get "stories/show"
  get "stories/new"

  get "stories/delete"




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
