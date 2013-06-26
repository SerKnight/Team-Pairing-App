class PairsController < ApplicationController
  def create
    @team = Team.includes(:members).find(params[:team_id])
    @pairs = Pairs.new(@team)
    @pairs.send_email

    flash[:notice] = "Pairs Made"

    render :show
  end
end


# Notifier.welcome(david).deliver # sends the email
# mail = Notifier.welcome(david)  # => a Mail::Message object
# mail.deliver                    # sends the email