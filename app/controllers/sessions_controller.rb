class SessionsController < ApplicationController
  def new
    return redirect_to root_path if current_user
  end

  def create
    username = params[:username]
    password = params[:password]

    user = User.find_by(username: username)
    if user && user.authenticate(password)
      session[:user_id] = user.id
      redirect_to root_path
    else
      render status: 500, json: { message: 'Wrong username or password' }
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
