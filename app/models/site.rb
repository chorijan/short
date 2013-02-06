class Site < ActiveRecord::Base
  
  attr_accessible :domain, :name

  has_many :urls

  before_create {
  	self.uuid = SecureRandom.uuid
  }

end