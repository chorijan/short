class Url < ActiveRecord::Base

  attr_accessible :long_url, :short, :site_id

  belongs_to :site
  has_many :clicks

  validates_uniqueness_of :long_url, :short
  validates_presence_of :site, :long_url, :short
  # format_url :long

  before_create :generate_short

  scope :search, lambda { |search| where("long_url LIKE ?", "%#{search}%")}


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