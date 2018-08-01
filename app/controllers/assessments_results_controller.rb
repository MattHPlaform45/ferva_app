class AssessmentsResultsController < ApplicationController

  def index
    @assessmentsresults = Assessments.all
  end

  def new
    @assessmentresults 
  end

end
