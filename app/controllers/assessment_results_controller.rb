class AssessmentsResultsController < ApplicationController

  def index
    @assessments_results = AssessmentsResults.all
  end

  def new
    @assessments_result = AssessmentsResult.new
  end

  def create
    @assessments_result = AssessmentsResult.new(assessments_result_params)
    if @assessments_result.save
      redirect_to user_assessment_path(@user_assessment)
    else
      render 'new'
    end
  end

  private

  def assessments_result_params
    params.require(:assessments_result).permit(:result, :user_id)
  end

end
