class MoviesController < ApplicationController
  PER = 18

  def index
    if params[:genre] == nil
      @movies = Movie.where(genre: ["Basic", "Git", "Ruby", "Ruby on Rails"]).page(params[:page]).per(PER)
    else
      @movies = Movie.where(genre: params[:genre]).page(params[:page]).per(PER)
    end
  end
end
