Rails.application.routes.draw do
  get 'resources/index'
  get 'resources/new'
  get 'resources/edit'
  get 'resources/show'
  get 'admins/index'
  get 'admins/new'
  get 'admins/edit'
  get 'admins/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
