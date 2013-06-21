class Team < ActiveRecord::Base
  has_and_belongs_to_many :members 
  accepts_nested_attributes_for :members

  validates_presence_of :description
  validates :name,
  :presence   => true,
  :length => { :maximum => 24 },
  :uniqueness => true,
  :format     => { :with => /[a-z]/ }
end


