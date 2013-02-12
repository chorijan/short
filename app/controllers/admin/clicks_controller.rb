class Admin::ClicksController < ApplicationController

	def index
		@title = "All Clicks"
		@clicks = Click.paginate(:page => params[:page], :per_page => 30)
	end

end