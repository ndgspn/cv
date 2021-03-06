class ProfilesController < ApplicationController
  before_action :user_signed_in?, except: [:index]

  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile      = Profile.new(profile_params)
    @profile.user = current_user
    return redirect_to profiles_path if @profile.save
    render status: 402, json: { message: @profile.errors }
  end

  def edit
    @profile = Profile.profile(params)
  end

  def update
    @profile = Profile.profile(params)
    return redirect_to  profiles_path if @profile.update(profile_params)
    render status: 402, json: { message: @profile.errors }
  end

  def destroy
    @profile = Profile.profile(params)
    return redirect_to  profiles_path if @profile.destroy
    render status: 500, json: { message: @profile.errors }
  end

  private
  def profile_params
    params.require(:profile).permit(:about)
  end

end
