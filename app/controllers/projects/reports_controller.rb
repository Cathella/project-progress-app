class Projects::ReportsController < ApplicationController
  before_action :set_project

  def new
    @report = Report.new
  end
  
  def create
    @report = @project.reports.new report_params

    if @report.save
      redirect_to project_path(@project), notice: "Successfully Added!"
    else
      redirect_to @project, notice: "Unable to add report!"
    end
  end
  
  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def report_params
    params.require(:report).permit(:title, :status, :description, :comment)
  end
end