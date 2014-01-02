Cubbylife::Application.routes.draw do
  root :to => 'pages#home'
  get '/about' => 'pages#about'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/user' => 'user#new'
  post '/user' => 'user#create'

  get '/events' => 'events#index'
  get '/events/:id' => 'events#show', :as => 'event'

  get '/event/:id/delete' => 'events#delete', :as => 'delete_event'

  get '/event' => 'events#new', :as => 'new_event'
  post '/events' => 'events#create'

  get '/events/:id/edit' => 'events#edit', :as => 'edit_event'
  put '/events/:id' => 'events#update', :as => 'update_event'

  get '/units/search' => 'units#search'
  resources :units

  post '/event_participations/:id/create' => 'event_participation#create', :as => 'new_event_participation'
  resources :event_participation, :except => [:new]

end
