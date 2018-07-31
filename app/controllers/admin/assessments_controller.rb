class Admin::AssessmentsController < AdministrationController

  def index
    @assesments = Assessment.all
  end

  def show
    @asessment = Assessment.find(params[:id])
  end

  def new
    @assessment = Assessment.new
  end

  def create
    @assessment = Assessment.new(assessment_params)

    if @assessment.save
      redirect_to admin_assessment_path(@assessment)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def find_assessment
  end

  def assessment_params
    params.require(:assessment).permit(:title)
  end


end
