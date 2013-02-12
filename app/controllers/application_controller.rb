class ApplicationController < ActionController::Base
  
  protect_from_forgery

	private

	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user

	def current_site
    @site ||= Site.find_by_domain(request.host)
  end
  helper_method :current_site

	def authorize
	  redirect_to login_url, alert: "Not authorized" if current_user.nil?
	end

end