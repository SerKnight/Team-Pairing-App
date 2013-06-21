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
    @member.update_attributes(params[:team_id])
    redirect_to members_path, notice: 'Member added to team.'
  end

  def create
    @member = Member.create(member_params)
    redirect_to member_path(@member)
  end 

  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:name, :email)
    end
end
