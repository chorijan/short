class Admin::SitesController < ApplicationController

  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
    @urls = @site.urls
    @title = @site.domain
  end

  def new
    @site = Site.new
  end

  def edit
    @site = Site.find(params[:id])
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
