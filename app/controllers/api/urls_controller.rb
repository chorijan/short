class Api::UrlsController < Api::BaseController

	before_filter do
		@site = Site.find_by_uuid(params[:site_uuid])

		render :text => "Error. Site not found." unless @site
	end

	# display a paginated list of urls for a site
	def index
		@urls = @site.urls.paginate(:page => params[:page])
		respond_with @urls
	end

	# create a new url linked to a site
	def new

    if params[:url].blank?
	    render :text => "URL not passed as a variable" 
    else
    	uri = URI::parse(params[:url])

	    # check to see if there's an existing short url
	    short_url = @site.urls.find_by_short(uri.path.split('/').second) || @site.urls.find_by_long_url(params[:url]) || @site.urls.find_by_long_url("http://#{params[:url]}")

	    if short_url
	      respond_to do |format|
		      format.html { render :text => short_url.full_short_link }
		      format.json { respond_with short_url }
		    end
	    else
	      @url = @site.urls.create(long_url: params[:url])
	      # Rails.logger.info request.path

	      respond_to do |format|
		      format.html { render :text => @url.full_short_link }
		      format.json { respond_with @url }
		    end
	    end
	  end
  end

end