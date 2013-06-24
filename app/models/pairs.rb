class Pairs
  attr_accessor :team

  def initialize(team)
    @team = team
  end

  def match
    pairs = []
    teammates = team.members
    teammates.collect do |member|
      pairs << member.name
    end
    pairs
  end

end
