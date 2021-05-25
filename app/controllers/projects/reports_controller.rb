class Projects::ReportsController < ApplicationController
  before_action :set_project
  before_action :set_report, only: [:show, :edit, :update, :destroy]

  def new
    @report = Report.new
  end

  def show
  end
  
  def create
    @report = @project.reports.new report_params
    if @report.save
      redirect_to project_path(@project), notice: "Successfully Added!"
    else
      redirect_to @project, notice: "Unable to add report!"
    end
  end

  def edit
  end

  def update
    if @report.update(report_params)
      redirect_to @project, notice: "Report successfully Updated!"
    else
      redirect_to @project, notice: "Unable to update report!"
    end
  end

  def destroy
    @report.destroy
    respond_to do |format|
      format.html { redirect_to @project, notice: "Report has been deleted!" }
    end
  end
  
  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_report
    @report = Report.find(params[:id])
  end

  def report_params
    params.require(:report).permit(:title, :status, :description, :comment, files: [])
  end
end