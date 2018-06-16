Rails.application.routes.draw do
  get 'home/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get '/welcome', to: "sessions#new", as: :welcome
  post '/login', to:"sessions#create", as: :login
  delete '/logout', to: "sessions#destroy", as: :logout
  #get 'users/new'
  #get 'users/create'
  get 'topics/index'
  get 'topics/show/:id' => 'topics#show', as: :topics_show
  get 'welcome/index'
  post 'topics/create' => 'topics#create'
  post 'posts/create' => 'post#create', as: :post_create
  delete 'topics/delete/:id' => 'topics#delete', as: :topic_delete

  resources :articles do
    resources :comments
  end

  resources :users, only: [:new, :create]

  root 'welcome#index'
end
