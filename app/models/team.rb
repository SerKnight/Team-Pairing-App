class Team < ActiveRecord::Base
  has_many :members

  validates :name,
  :presence   => true,
  :length => { :maximum => 24 },
  :uniqueness => true,
  :format     => { :with => /[a-z]/ }
end


