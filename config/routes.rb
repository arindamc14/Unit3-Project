Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :conversations do
    resources :messages
  end

  root 'posts#index'

  #This page shows all posts
  get '/posts', to: 'posts#index', as: 'posts'

  get '/posts/:id', to: 'posts#show', as: 'post'

  get '/post/new', to: 'posts#new', as: 'post_new'

  get '/post/new/lost', to: 'posts#new_lost', as: 'post_new_lost'

  get '/post/new/found', to: 'posts#new_found', as: 'post_new_found'

  post '/posts', to: 'posts#create'

  get '/posts/:id/edit', to: 'posts#edit', as: 'post_edit'

  patch '/posts/:id', to: 'posts#update'

  delete '/posts/:id', to: 'posts#delete', as: 'post_delete'


  # get '/conversations', to: 'conversations#index',

end