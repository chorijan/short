class ApplicationController < ActionController::Base
  
  protect_from_forgery

  def current_site
    @site ||= Site.find_by_domain(request.host)
  end

  helper_method :current_site

end