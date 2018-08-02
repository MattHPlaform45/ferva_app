class UserAssessmentsController < ApplicationController

  def index
  end

  def create
    @user_assessment = UserAssessment.new(user_assessment_params)
    if @user_assessment.save
      redirect_to user_assessment_path(@user_assessment)
    else
      render 'new'
    end
  end

  def new

  end

  def show
    @user_assessment = UserAssessment.find(params[:id])
    @questions = @user_assessment.assessment.questions

  end


end

def user_assessment_params
  params.require(:user_assessment).permit(:assessment_id, :user_id, :question_id, :category_id)
end
