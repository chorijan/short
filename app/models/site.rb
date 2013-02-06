class Site < ActiveRecord::Base
  
  attr_accessible :domain, :name

  has_many :urls

  validates_uniqueness_of :domain, :name
  validates_presence_of :domain, :name

  before_create {
  	self.uuid = SecureRandom.uuid
  }

end