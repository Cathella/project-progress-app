class ProjectsController < ApplicationController
  before_action :set_project, except: %i[ index create new ]

  def index
    @projects = Project.all
  end

  def show
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name)
  end
end