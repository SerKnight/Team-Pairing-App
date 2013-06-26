class MembersController < ApplicationController
  attr_accessor :name, :email, :team_id
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  def index
    @members = Member.all(:order => "created_at DESC")
  end

  def show
    @member = Member.find(params[:id])
    @teams = Team.all
  end

  def new
    @member = Member.new
  end

  def edit
  end

  def update
    @member = Member.find(params[:id])
    @member.update(member_params)
    if params[:member] && @member.update_attributes(:team_ids => params[:member][:team_ids])
      redirect_to members_path, :notice => "Member Information Updated"
    else
      redirect_to members_path
    end
  end

  def create
    @member = Member.create(member_params)
    redirect_to member_path(@member), :notice => "Member Created"
  end 

  def destroy
    @member.destroy
    redirect_to members_path
  end

  private
    def set_member
      @member = Member.find(params[:id])
    end

    def member_params
      params.require(:member).permit(:name, :email, :member)
    end
end
