Rails.application.routes.draw do

  # Main Page
  root 'welcome#home'

  get 'categories/show'
  get '/about', to: 'welcome#about'

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
  resources :users, only: [:show, :edit, :update, :destroy, :new, :create]

end
