class UsersController < ApplicationController
  before_action :user_signed_in?

  def index
    @users = User.all
  end

  def edit
    @user = User.current_user(params)
  end

  def update
    @user = User.current_user(params)
    return redirect_to users_path if @user.update(user_params)
    render json: { status: 422, response: @user.errors }, status: :unprocessable_entity
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation, :nickname, :address, :email, :website, :place_of_birth, :date_of_birth, :marital_status, :language)
  end
end
