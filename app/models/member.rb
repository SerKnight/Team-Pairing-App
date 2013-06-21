class Member < ActiveRecord::Base
  has_many :team_mates
  has_many :teams, :through => :team_mates

  validates_presence_of :name, :email
  validates_uniqueness_of :email
  validates_format_of :email, :with => /@/
end
