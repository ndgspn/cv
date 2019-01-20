class SessionsController < ApplicationController
  layout 'sessions'

  def new
    redirect_to root_path if current_user
  end

  def create
    username = params[:username]
    password = params[:password]
    user = User.find_by(username: username)
    if user && user.authenticate(password)
      session[:user_id] = user.id
      redirect_to root_path
    else
      render statu: 500, json: { message: 'Oops... login failed. Wrong username or password'}
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
