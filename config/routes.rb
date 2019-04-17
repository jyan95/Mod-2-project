Rails.application.routes.draw do

  # Main Page
  root 'welcome#home'

  get 'categories/show'
  get '/about', to: 'welcome#about', as: 'about'

  # add to cart feature and user specific cart views
  get '/tools/:id/add-tool', to: 'carts#create', as: 'add'
  get '/cart/:id', to: 'carts#show', as: 'cart'
  get '/users/:id/carts', to: 'carts#index', as: 'carts'


  # Create new tool by the user routes
  get '/user/:id/add-tool', to: 'users#new_tool', as: 'new_tool'
  post '/user/:id', to: 'users#create_tool', as: 'create_tool'

  # Edit tool by the user routes
  get '/user/:id/edit-tool', to: 'users#edit_tool'
  patch '/user/:id', to: 'users#update_tool'

<<<<<<< HEAD
  # view user specific tool
  get '/user-tool/:id', to: 'users#user_tool', as: "user_tool"
=======
  # Login and logout routes
  get '/signup', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'



>>>>>>> 6380033fe63b88bddd8faddad3ddef8e3ec8dc96
  # get 'carts/index'
  # get 'carts/show'
  # get 'carts/edit'
  # get 'carts/new'
  # get 'tools/index'
  # get 'tools/show'
  # get 'tools/edit'
  # get 'tools/new'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, except: :index
  resources :categories, only: [:index, :show]
  resources :tools, only: [:index, :show]

end
