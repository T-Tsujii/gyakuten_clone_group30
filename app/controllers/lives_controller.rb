class LivesController < ApplicationController
  PER = 18

  def index
    @lives = Movie.where(genre: "Live").page(params[:page]).per(PER)
  end
end
