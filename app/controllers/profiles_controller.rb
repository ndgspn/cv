class ProfilesController < ApplicationController
  def index
    @profiles   = Profile.profile
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    return redirect_to profiles_path if @profile.save
    render status: 402, json: { message: @profile.errors }
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    return redirect_to  profiles_path if @profile.update(profile_params)
    render status: 402, json: { message: @profile.errors }
  end

  def destroy
    @profile = Profile.find(params[:id])
    return redirect_to  profiles_path if @profile.destroy
    render status: 500, json: { message: @profile.errors }
  end

  private
  def profile_params
    params.require(:profile).permit(:about)
  end

end
