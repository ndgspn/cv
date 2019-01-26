class SessionsController < ApplicationController
  layout 'sessions'

  def new
    redirect_to root_path if current_user
  end

  def create
    user = ::Sessions::Create.call(params, session)
    return redirect_to root_path if user
    render status: 500, json: { message: 'Oops... login failed. Wrong username or password' }
  end

  def destroy
    ::Sessions::Destroy.call(session)
    redirect_to root_path
  end

end
