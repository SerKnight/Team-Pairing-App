class Pairs
  attr_reader :matches,
              :team

  def initialize(team)
    @team = team
    randomized_teammates = team.members.shuffle
    @matches = randomized_teammates.each_slice(2).to_a
  end

  def send_email
    team.members.each do |member|
      PairsMailer.notify(member, self).deliver
    end
  end
end