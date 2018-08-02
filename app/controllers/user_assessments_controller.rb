class UserAssessmentsController < ApplicationController

  def index
  end

  def create
    @user_assessment = UserAssessment.new(user_assessment_params)
    if @user_assessment.save
      AssessmentsResult.create(user_assessment_id: @user_assessment.id, result: nil, user_id: @user_assessment.user_id)
      @user_assessment.assessment.questions.each do |question|
        binding.pry
        Answer.create(result: nil, question_id: question.id, user_assessment_id: @user_assessment.id, assessments_result_id: @user_assessment.assessments_result.id)
      end
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

  private

  def user_assessment_params
    params.require(:user_assessment).permit(:assessment_id, :user_id, :question_id, :category_id)
  end
end
