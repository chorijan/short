class UrlsController < ApplicationController

	# GET /:short
  # Sends the user to the desired link and increments the click counter
  def goto
    url = current_site.urls.find_by_short(params[:short])

    if url
    	Click.create(:url_id => url.id, :referrer => request.referer, :user_agent => request.user_agent, :ip_address => request.ip)
      puts "redirecting to " + url.long
      redirect_to url.long
    else
    	render :text => "URL not found", :status => 404
    	# render :file => "#{Rails.root}/public/404.html", :status => :not_found
    end
  end

end