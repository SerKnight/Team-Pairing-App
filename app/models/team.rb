class Team < ActiveRecord::Base
  has_many :members, :through => :team_mates

  validates :name,
  :presence   => true,
  :length => { :maximum => 24 },
  :uniqueness => true,
  :format     => { :with => /[a-z]/ }
end


