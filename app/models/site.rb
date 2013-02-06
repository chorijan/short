class Site < ActiveRecord::Base
  
  attr_accessible :domain, :name

  before_create {
  	self.uuid = SecureRandom.uuid
  }

end