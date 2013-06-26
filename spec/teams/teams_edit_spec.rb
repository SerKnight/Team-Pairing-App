require 'spec_helper'


describe "editing a team" do 
  it "will save a member in a team" do 
    team = Team.create(name: "Ramrod", description: "Cliche team name")
    member = team.members.create(name: "Topher", email: "rehpotsirhc46@gmail.com")
    visit '/teams'
    click_link "Organize Pairs"
    click_link "Edit"
    fill_in "Name", with:("Totes a team Name")
    click_button "Update Team"
    expect(page).to have_content("Team:")
  end
end

