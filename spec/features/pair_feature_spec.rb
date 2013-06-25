require "spec_helper"

describe "creating a set of team pairs" do 
  before(:each) do 
    @team = Team.create(name: "test team", description: "test team description")
    @member1 = Member.create(name: "toph1", email: "toph1@gmail.com")
    @member2 = Member.create(name: "toph2", email: "toph2@gmail.com")
    @member3 = Member.create(name: "toph3", email: "toph3@gmail.com")
    @member4 = Member.create(name: "toph4", email: "toph4@gmail.com")
    @member5 = Member.create(name: "toph5", email: "toph5@gmail.com")
    @member6 = Member.create(name: "toph6", email: "toph6@gmail.com")
  end

  it "lists out all the pairs when you click match" do 
    visit '/pairs'
    click_link "pair team 1"
    expect(page).to have_content("You have made some pairs")
  end

end