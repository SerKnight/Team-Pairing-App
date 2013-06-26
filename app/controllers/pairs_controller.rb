class PairsController < ApplicationController
  def create
    @team = Team.includes(:members).find(params[:team_id])
    @pairs = Pairs.new(@team)
    @pairs.send_email

    flash[:notice] = "Great! Pairs are set for the week. The Team wil receive an email :)"

    render :show
  end
end