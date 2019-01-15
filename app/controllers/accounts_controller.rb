class AccountsController < ApplicationController
  before_action :user_signed_in?

  def edit 
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    return redirect_to users_path if @user.update(user_params)
    render status: 402, json: { message: @user.errors }
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
