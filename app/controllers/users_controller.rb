class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    return redirect_to users_path if @user.update(user_params)
    render status: 500, json: { message: @user.errors }
  end

  private
  def user_params
    params.require(:user).permit(:name, :address, :email, :website, :place_of_birth, :date_of_birth, :marital_status, :language)
  end
end
