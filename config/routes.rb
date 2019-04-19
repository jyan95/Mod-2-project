Rails.application.routes.draw do

  # Main Page
  root 'welcome#home'
  
  get 'categories/show'
  get '/about', to: 'welcome#about', as: 'about'

  # cart feature and user specific cart views
  get '/tools/:id/add-tool', to: 'carts#add', as: 'add'
  post '/remove-tool', to: 'carts#remove', as: 'remove'
  get '/past-orders', to: 'carts#index', as: 'carts'
  get '/past-order/:id', to: 'carts#past_order', as: 'past_order'
  get '/carts/:id', to: 'carts#show', as: 'cart'
  patch '/checkout', to: 'carts#checkout'

  # User
  get '/user/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/edit-user', to: 'users#update'
  delete '/delete-account/:id', to: 'users#destroy', as: 'delete_account'

  # Create new tool by the user routes
  get '/user/:id/add-tool', to: 'users#new_tool', as: 'new_tool'
  post '/user/:id', to: 'users#create_tool', as: 'create_tool'

  # Edit tool by the user routes
  get '/user/:id/edit-tool', to: 'users#edit_tool'
  patch '/user/:id', to: 'users#update_tool'

  # view user specific tools
  get '/user-tools/:id', to: 'users#user_tool', as: "user_tool"
  get '/user-tools', to: 'users#user_tools', as: 'user_tools'

  # Login and logout routes
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  # Sign up routes
  get '/signup', to: 'users#new', as: 'signup'

  # get '/tools/:category', to: 'category#'

  # resources :users, except: :index
  resources :categories, only: [:index, :show]
  resources :tools, only: [:index, :show]
  # resources :carts
  resources :users, except: [:new]

end
