class Pairs
  attr_accessor :team

  def initialize(team)
    @team = team
  end

  def match
    pairs = []
    teammates = team.members
      pairs << teammates.sample.name
      pairs << teammates.sample.name
    pairs
  end

end
