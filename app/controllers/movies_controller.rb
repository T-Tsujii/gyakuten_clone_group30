class MoviesController < ApplicationController
  def index
    flash[:success] = "ログインに成功しました。"
  end
end
