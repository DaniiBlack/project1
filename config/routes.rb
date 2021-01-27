Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#home'
  resources :resources
  resources :admins, :only => [:new, :create, :index]


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete'/login' => 'session#destroy'
end
