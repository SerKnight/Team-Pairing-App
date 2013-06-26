require "spec_helper"

describe "pairs" do 

  before(:each) do 
    @team = Team.create( name: "test team", description: "we test teams")
    @member_one = Member.create( name: "Toph1", email: "toph@toph1.com", team_ids: @team.id)
    @member_two = Member.create( name: "Toph2", email: "toph@toph2.com", team_ids: @team.id)
    @member_three = Member.create( name: "Toph3", email: "toph@toph3.com", team_ids: @team.id)
    @member_four = Member.create( name: "Toph4", email: "toph@toph4.com", team_ids: @team.id)
    @member_five = Member.create( name: "Toph5", email: "toph@toph5.com", team_ids: @team.id)
    @past_pairs = [["Toph1", "Toph2"],["Toph3", "Toph4"],["Toph5", nil]]
  end

  context "if there are 5 people in a team" do 
    it "should make three pairs with one solo" do
      Pairs.new(@team).matches.count.should == 3
    end

    it "pairs should not be the same person" do 
      team_pairs = Pairs.new(@team).matches
      expect(team_pairs[0]).to_not eq team_pairs[1]
    end
  end
end