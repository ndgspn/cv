class SessionsController < ApplicationController
  layout 'sessions'

  def new
    redirect_to root_path if current_user
  end

  def create
    user = ::Session::AuthenticateUser.new(params, session).call
    return redirect_to root_path if user
    render status: 500, json: { message: 'Oops... login failed. Wrong username or password' }
  end

  def destroy
    ::Session::Destroy.new(session).call
    redirect_to root_path
  end

end
