Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "movies#index"
  resources "aws_texts", only: [:index, :show]
  resources "questions", only: [:index]
  resources "lines", only: [:index]
end
