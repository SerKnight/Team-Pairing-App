class PairsController < ApplicationController
  def create
    @team = Team.includes(:members).find(params[:team_id])
    @pairs = Pairs.build(@team)
    render :show
  end
end
