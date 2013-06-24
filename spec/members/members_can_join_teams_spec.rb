require 'spec_helper'


describe "A member can join a team" do 
  before(:each) do 
    member1 = Member.create(name: "Topher", email: "topher@gmail.com")
    @team1 = Team.create(name: "Toph's Team", description: "Cliche Team Name")
    @team2 = Team.create(name: "Toph's Other Team", description: "Cliche Team Name")
    visit "/members"
  end

  it "will save a member in a team" do 
    click_link "Topher"
    find(:css, "#member_team_ids_[value='#{@team1.id}']").set(true)
    click_link_or_button("Update Teams")
    expect(page).to have_content("Toph's Team")
  end

  it "will save a member in multiple teams" do 
    click_link "Topher"
    find(:css, "#member_team_ids_[value='#{@team1.id}']").set(true)
    find(:css, "#member_team_ids_[value='#{@team2.id}']").set(true)
    click_link_or_button("Update Teams")
    expect(page).to have_content("Toph's Team")
    expect(page).to have_content("Toph's Other Team")
  end
end

