Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "movies#index"
  resources "aws_texts", only: [:index, :show]
  resources "questions", only: [:index, :create, :show]
  resources "lines", only: [:index]
  resources "movies", only: [:index]
end
