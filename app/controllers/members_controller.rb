class MembersController < ApplicationController

  def index
    @members = Member.all
  end

  def new
    @member = Member.new
    @teams = Team.all
  end

  def create
    @member = Member.new(member_params)
    if(@member.save)
      redirect_to @member
    else
      render 'new'
    end
  end

  def show
    @member = Member.find(params[:id])
  end

  def member_params
    params.require(:member).permit(:name, :team_id)
  end
end
