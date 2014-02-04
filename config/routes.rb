RustCache::Application.routes.draw do
  resources :caches
  get '/caches/:id/share', to: 'caches#share', as: 'cach_share'
  post '/caches/:id/share', to: 'caches#share_create', as: 'user_caches'

  resources :locations

  resources :servers

  root :to => "home#index"
  devise_for :users
end
