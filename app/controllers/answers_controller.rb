class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def update
  end

  def edit
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to answer_path(@answer)
    else
      render 'new'
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:result, :question_id, :user_assessment_id)
  end
end
