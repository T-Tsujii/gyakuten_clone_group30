Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :users,  only:[:edit]
  root to: 'movies#index'
  resources 'aws_texts' , only:[:index, :show]
end
