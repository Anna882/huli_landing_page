class MainController < ApplicationController

  def index
    @teams = Team.all
    @projects = Project.all
  end
end
