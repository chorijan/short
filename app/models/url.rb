class Url < ActiveRecord::Base

  attr_accessible :long_url, :short, :site_id

  belongs_to :site
  has_many :clicks, :dependent => :destroy

  validates_uniqueness_of :long_url, :short
  validates_presence_of :site, :long_url, :short
  format_url :long_url

  default_scope :order => "id DESC"

  before_validation :generate_short

  scope :search, lambda { |search| where("long_url LIKE ? OR short LIKE ?", "%#{search}%", "%#{search}%")}

  def full_short_link
  	"http://#{self.site.domain}/#{self.short}"  	
  end

  # customised as_json call
  def as_json(options={})
    { :id => id, :full_url => full_short_link, :short => short, :long_url => long_url, :title => title }
  end

	private

	def generate_short
		begin
			self.short = SecureRandom.hex(2)
		end while self.class.exists?(short: short)
	end

end