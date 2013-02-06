class Admin::SitesController < ApplicationController

  def index
    @sites = Site.all
    @title = "All Sites"
  end

  def show
    @site = Site.find(params[:id])
    @urls = @site.urls.search(params[:search]).paginate(:page => params[:page])
    @title = @site.domain
    @subtitle = @site.uuid
  end

  def new
    @site = Site.new
    @title = "New Site"
  end

  def edit
    @site = Site.find(params[:id])
    @title = "Editing #{@site.domain}"
  end

  def create
    @site = Site.new(params[:site])

    if @site.save
      redirect_to admin_site_path(@site), notice: 'Site was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @site = Site.find(params[:id])

    if @site.update_attributes(params[:site])
      redirect_to admin_site_path(@site), notice: 'Site was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @site = Site.find(params[:id])
    @site.destroy

    redirect_to admin_sites_url
  end

end