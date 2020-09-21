class MoviesController < ApplicationController
  PER = 24

  def index
    @movies = Movie.page(params[:page]).per(PER)
  end
end
