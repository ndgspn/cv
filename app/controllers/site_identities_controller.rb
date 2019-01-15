class SiteIdentitiesController < ApplicationController
  before_action :user_signed_in?

  def index
    @site_identities = SiteIdentity.all
  end

  def new
    @site_identity = SiteIdentity.new
  end

  def create
    @site_identity = SiteIdentity.new(site_params)
    return redirect_to site_identities_path if @site_identity.save
    render status: 402, json: { message: @site_identity.errors }
  end

  def edit
    @site_identity = SiteIdentity.find(params[:id])
  end

  def update
    @site_identity = SiteIdentity.find(params[:id])
    return redirect_to site_identities_path if @site_identity.update(site_params)
    render status: 402, json: { message: @site_identity.errors }
  end

  def destroy
    @site_identity = SiteIdentity.find(params[:id])
    return redirect_to site_identities_path if @site_identity.destroy
    render status: 500, json: { message: @site_identity.errors }

  end

  private
  def site_params
    params.require(:site_identity).permit(:site_name, :site_description, :site_meta)
  end
end
