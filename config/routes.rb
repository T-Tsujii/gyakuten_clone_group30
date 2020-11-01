Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'movies#index'
  resources 'aws_texts' , only:[:index, :show]
  resources 'questions'
  resources 'lines', only: [:index]
  resources 'lives', only:[:index]
  resources 'movies', only:[:index]
end
