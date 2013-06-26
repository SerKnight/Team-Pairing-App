class Pairs
  def self.build(team)
    randomized_teammates = team.members.shuffle
    randomized_teammates.each_slice(2).to_a
  end
end
