Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'posts#index'

  #This page shows all posts
  get '/posts', to: 'posts#index', as: 'posts'
  get '/posts/new', to: 'posts#new', as: 'post_new'
  post '/posts/new', to: 'posts#create', as: 'post_create'

  #get '/posts/edit', to: 'posts#'
  #post '/posts/edit'

end