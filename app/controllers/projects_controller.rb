class ProjectsController < ApplicationController
  before_action :set_project, except: %i[ index create ]

  def index
    @projects = Project.all
  end

  def show
    @reports = @project.reports.all
  end

  def new
    @project = Project.new
  end

  def create
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name)
  end
end