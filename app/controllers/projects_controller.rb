class ProjectsController < ApplicationController

  def new
    @project = Project.new
    @teams = Team.all
  end

  def create
    @project = Project.new(project_params)
    if (@project.save)
      redirect_to project_path(@project)
    else
      render 'new'
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def index
    @projects = Project.all
  end

  private def project_params
    params.require(:project).permit(:title, :description, :team_id)
  end
end
