Rails.application.routes.draw do

  namespace :admin do
  resources :sessions, only: [:new, :create, :destroy]
  resources :moderators, only: [:index, :edit, :update]
end
end
  