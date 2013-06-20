require 'spec_helper'


describe "A member can join a team" do 
  before(:each) do 
    member1 = Member.create(name: "Topher", email: "topher@gmail.com")
    team1 = Team.create(name: "Toph's Team")
  end

  it "will save a member in a team" do 
    member1.join_team(team1)
    expect(member1).attributes to_include("toph's Team")
  end
end