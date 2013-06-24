require "spec_helper"

describe "creating 1-on-1 pairs" do 

  before(:each) do 
    @team = Team.create( name: "test team", description: "we test teams")
    @member_one = Member.create( name: "Toph1", email: "toph@toph1.com", team_ids: @team.id)
    @member_two = Member.create( name: "Toph2", email: "toph@toph2.com", team_ids: @team.id)
    @member_three = Member.create( name: "Toph3", email: "toph@toph3.com", team_ids: @team.id)
    @member_four = Member.create( name: "Toph4", email: "toph@toph4.com", team_ids: @team.id)
  end

  it "pairs 2 teammates on the same team" do 
    Pairs.new(@team).match.count.should == 2
  end

  it "pairs 4 people into two teams at random" do 
    Pairs.new(@team).match.should == [
      [@member_one.name, @member_two.name]
    ]
  end

end