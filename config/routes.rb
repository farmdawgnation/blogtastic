Blogtastic::Application.routes.draw do
  ###
  # Default Frontend Routes
  #
  # Customize this to your heart's content.
  ###
  get "pages/:slug" => 'pages#view'
  get "blogs/index"
  get "blogs/:slug/comment" => 'blogs#comment'
  get "blogs/:slug" => 'blogs#view'
  get "home/index"
  
  # This sets up the routes for authentication. Be careful
  # not to break the backend of you tweak this.
  devise_for :users
  
  ###
  # Administrative Routes
  #
  # Leave these alone, and your life will be easy
  # Don't and you get to figure out the merge conflicts
  # yourself. :P
  ###
  namespace :admin do
    resources :blogs
    resources :pages
    resources :comments
  end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'home#index'
end
