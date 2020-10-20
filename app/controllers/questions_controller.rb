class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    Question.create
    redirect_to new_question_path
  end

  private
  def user_params
    params.require(:question).permit(:title, :detail)
  end

end
