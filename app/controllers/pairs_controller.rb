class PairsController < ApplicationController

  def new
    @pairs = Pairs.new
    @teams = Team.all
  end

  def create
  end

  def show
  end

  def index
  end

  def destroy
  end

end
