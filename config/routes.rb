Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'movies#index'
  get 'aws_texts/index' => 'aws_texts#index'
end
