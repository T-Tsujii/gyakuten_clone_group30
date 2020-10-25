class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    Question.create!(question_params)
    redirect_to new_question_path
  end

  private
  def question_params
    params.require(:question).permit(:title, :detail)
  end

end
