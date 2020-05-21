Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'posts#index'

  #This page shows all posts
  get '/posts', to: 'posts#index', as: 'posts'

  get '/posts/:id', to: 'posts#show', as: 'post'

  get '/post/new', to: 'posts#new', as: 'post_new'

  post '/posts', to: 'posts#create'

  get '/posts/edit', to: 'posts#edit', as: 'post_edit'

  put '/posts/edit', to: 'posts#update'

  delete '/posts/:id', to: 'posts#delete', as: 'post_delete'

end