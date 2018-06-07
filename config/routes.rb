Rails.application.routes.draw do
  get 'topics/index'
  get 'topics/show/:id' => 'topics#show', as: :topics_show
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  root 'welcome#index'
end
