class Url < ActiveRecord::Base

  attr_accessible :long, :short, :site_id

  belongs_to :site
  has_many :clicks

  validates_uniqueness_of :long, :short
  validates_presence_of :site, :long, :short
  # format_url :long

  default_scope :order => "id DESC"

  before_create :generate_short

  def full_short_link
  	"http://#{self.site.domain}/#{self.short}"  	
  end

	private

	def generate_short
		begin
			self.short = SecureRandom.hex(2)
		end while self.class.exists?(short: short)
	end

end