require "spec_helper"

describe "creating a set of team pairs" do 
  before(:each) do 
    team = Team.create!(name: "Ramrod", description: "Cliche team name")
    member = team.members.create(name: "Topher", email: "rehpotsirhc46@gmail.com")
    pairs = Pairs.new(team)
  end

  it "lists out all the pairs when you click match" do 
    visit '/teams'
    click_link_or_button "Organize Pairs"
    click_link_or_button "Match Team?"
    expect(page).to have_content("This Week's Pairs for team")
  end

end