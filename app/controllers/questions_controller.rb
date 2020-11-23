class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @question = Question.new
  end

  def create
    Question.create!(question_params)
    redirect_to questions_path
  end

  def show
    @question = Question.find(params[:id])
  end

  private

  def question_params
    params.require(:question).permit(:title, :detail)
  end
end
