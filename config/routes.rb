Cubbylife::Application.routes.draw do
  root :to => 'pages#home'
  get '/about' => 'pages#about'

  get '/login' => 'session#new'
  post '/login' => 'session#create'

  get '/events' => 'events#index'
  get '/events/:id' => 'events#show', :as => 'event'

  get '/event/:id/delete' => 'events#delete', :as => 'delete_event'

  get '/event' => 'events#new', :as => 'new_event'
  post '/events' => 'events#create'

  get '/events/:id/edit' => 'events#edit', :as => 'edit_event'
  put '/events/:id' => 'events#update', :as => 'update_event'

  resources :units
  get '/search' => 'units#search'
end
