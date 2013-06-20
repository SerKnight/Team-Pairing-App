require 'spec_helper'

describe "saving a new member" do 
  it "saves a valid member to the db" do 
    member = Member.create( name: "Topher", email: "topher@gmail.com")
    expect(member).to be_valid
  end

  it "does not save invalid members" do 
    member = Member.create( name: "", email: "")
    expect(member).to be_invalid
  end

  it "only validates legitimate emails" do 
    member = Member.create( name: "Hank Reardon", email: "atlas.shrugged.com")
    expect(member).to be_invalid
  end

  it "validates email is unique" do 
    member1 = Member.create( name: "Topher1", email: "topher@gmail.com")
    member2 = Member.create( name: "Topher2", email: "topher@gmail.com")
    expect(member2).to be_invalid
  end
end