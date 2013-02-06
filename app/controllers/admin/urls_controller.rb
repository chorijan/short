class Admin::UrlsController < ApplicationController

	def index
		@title = "All URLs"
		@urls = Url.search(params[:search]).paginate(:page => params[:page])
	end

	def destroy
		@url = Url.find(params[:id])
		@url.destroy		
		redirect_to admin_site_path(@url.site), :notice => "URL Deleted Successfully"
	end

end