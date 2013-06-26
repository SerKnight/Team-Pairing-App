require "spec_helper"

describe PairsMailer do
    
  it "sends pairs their email" do 
    team = Team.create(name: "Ramrod", description: "Cliche team name")
    member = team.members.create(name: "Topher", email: "rehpotsirhc46@gmail.com")
    pairs = Pairs.new(team)
    email = PairsMailer.notify(member, pairs).deliver
    expect(ActionMailer::Base.deliveries).to_not be_empty
  end
end