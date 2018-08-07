class UserAssessmentsController < ApplicationController

  def index
  end

  def create
    @user_assessment = UserAssessment.new(user_assessment_params)
    if @user_assessment.save
      AssessmentsResult.create(user_assessment_id: @user_assessment.id, result: nil, user_id: @user_assessment.user_id)
      @user_assessment.assessment.questions.each do |question|
        Answer.create(result: nil, question_id: question.id, user_assessment_id: @user_assessment.id, assessments_result_id: @user_assessment.assessments_result.id)
      end
      redirect_to user_assessment_path(@user_assessment)
    else
      render 'new'
    end
  end

  def new
  end

  def update
    @user_assessment = UserAssessment.find(params[:id])
    Answer.where(user_assessment_id: @user_assessment.id).each do |ans|
      ids = []
      params[:assessments_result][:answers_attributes].each { |thing| ids << thing.second['result'] if thing.second['id'] == ans.id.to_s }
      ans.update_columns(result: ids.join(', ').to_i)
    end
    redirect_to assessments_result_path(@user_assessment.assessments_result)
  end

  def show
    @user_assessment = UserAssessment.find(params[:id])
    @questions = @user_assessment.assessment.questions
    @result = @user_assessment.assessments_result
  end

  private

  def user_assessment_params
    params.require(:user_assessment).permit(:assessment_id, :user_id, :question_id, :category_id)
  end
end
