class Click < ActiveRecord::Base
  attr_accessible :ip_address, :referrer, :url_id, :user_agent
end
