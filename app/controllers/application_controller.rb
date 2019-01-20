class ApplicationController < ActionController::Base

  helper_method :current_user, :site_name, :site_description

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    else
      nil
    end
  end

  def user_signed_in?
    if current_user
      true
    else
      render json: { message: 'Not authorize to access this page!' }
      return false
    end
  end

  def site_name
    if SiteIdentity.all.empty?
      'cv plus'
    else
      SiteIdentity.first.site_name
    end
  end

  def site_description
    if SiteIdentity.all.empty?
      'cv plus description'
    else
      SiteIdentity.first.site_description
    end
  end

end
