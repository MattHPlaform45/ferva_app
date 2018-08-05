class AssessmentsResultsController < ApplicationController

  def index
    # @assessments_results = AssessmentsResult.all
  end

  def new
    @assessments_result = AssessmentsResult.new
  end

  def update
  end

  def show
    @assessments_result = AssessmentsResult.find(params[:id])
  end

  def edit
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
