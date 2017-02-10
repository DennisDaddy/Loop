Rails.application.routes.draw do

  get '/login' => 'admin/sessions#new'
   get '/logout' => 'admin/sessions#destroy'

  namespace :admin do
  resources :comments, only: [:index, :update, :destroy]
  resources :tags, except: [:index]
  resources :posts	
  resources :sessions, only: [:new, :create, :destroy]
  resources :moderators, only: [:index, :edit, :update]
end
end
  