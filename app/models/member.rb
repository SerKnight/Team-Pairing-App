class Member < ActiveRecord::Base
  has_and_belongs_to_many :teams

  validates_presence_of :name, :email
  validates_uniqueness_of :email
  validates_format_of :email, :with => /@/


end
