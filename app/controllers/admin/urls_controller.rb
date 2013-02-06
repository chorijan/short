class Admin::UrlsController < ApplicationController

	before_filter do
		@site = Site.find(params[:site_id])
	end

	def index
		@urls = @site.urls
	end

	def destroy
		@url = @site.urls.find(params[:id])
		@url.destroy		
		redirect_to admin_site_path(@site), :notice => "URL Deleted Successfully"
	end

end