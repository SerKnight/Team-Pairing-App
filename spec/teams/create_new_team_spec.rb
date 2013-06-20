require 'spec_helper'

describe "saving a new team" do 
  it "saves a valid team to the db" do 
    team = Team.create( name: "Ramrod" )
    expect(team).to be_valid
  end

  it "does not save invalid teams" do 
    team = Team.create( name: "")
    expect(team).to be_invalid
  end

  it "only validates legitimate team name" do 
    team = Team.create( name: "!@#%^&*}")
    expect(team).to be_invalid
  end

  it "validates email is unique" do 
    team1 = Team.create( name: "Ramrod" )
    team2 = Team.create( name: "Ramrod" )
    expect(team2).to be_invalid
  end
end