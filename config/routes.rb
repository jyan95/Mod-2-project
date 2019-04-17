Rails.application.routes.draw do

  # Main Page
  root 'welcome#home'

  get 'categories/show'
  get '/about', to: 'welcome#about', as: 'about'

  # cart feature and user specific cart views
  get '/tools/:id/add-tool', to: 'carts#add', as: 'add'
  get '/carts/:id', to: 'carts#show', as: 'cart'
  get '/carts', to: 'carts#index', as: 'carts'
  get '/carts', to: 'carts#checkout', as: 'checkout'
  # delete '', to: 'carts#remove_item', as: 'remove'


  # Create new tool by the user routes
  get '/user/:id/add-tool', to: 'users#new_tool', as: 'new_tool'
  post '/user/:id', to: 'users#create_tool', as: 'create_tool'

  # Edit tool by the user routes
  get '/user/:id/edit-tool', to: 'users#edit_tool'
  patch '/user/:id', to: 'users#update_tool'

  # view user specific tools
  get '/user-tools/:id', to: 'users#user_tool', as: "user_tool"

  # Login and logout routes
  get '/signup', to: 'sessions#new', as: 'login'
  # post '/signup', to: 'sessions#login'
  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, except: :index
  resources :categories, only: [:index, :show]
  resources :tools, only: [:index, :show]

end
