class Click < ActiveRecord::Base
  
  attr_accessible :ip_address, :referrer, :url_id, :user_agent

  belongs_to :url

  default_scope :order => "id DESC"

end