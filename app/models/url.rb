class Url < ActiveRecord::Base

  attr_accessible :long, :short, :site_id

  validates_uniqueness_of :long, :short
  validates_presence_of :site, :long, :short
  # format_url :long

  default_scope :order => "id DESC"

  before_create :generate_short

	private

	def generate_short
		begin
			self.short = SecureRandom.hex(2)
		end while self.class.exists?(short: short)
	end

end