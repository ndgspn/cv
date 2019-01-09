class ProfilesController < ApplicationController
  def index
    @profiles   = Profile.profile
  end

end
