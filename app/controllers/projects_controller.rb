class ProjectsController < ApplicationController
  before_action :set_project, except: %i[ index create new ]

  def index
    @projects = Project.all
  end

  def show
    @reports = @project.reports
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project), notice: "Project Added!"
    else
      redirect_to @project, notice: "Failed to add project!"
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: "Project Updated!"
    else
      redirect_to projects_path, notice: "Failed to update project!"
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name)
  end
end