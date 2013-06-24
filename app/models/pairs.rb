class Pairs
  attr_accessor :team
  attr_reader :past_pairs

  def initialize(team, past_pairs)
    @team = team
    @past_pairs = past_pairs
  end

  def match
    teammates = team.members
    teammates.each_slice(2).to_a
  end

end
