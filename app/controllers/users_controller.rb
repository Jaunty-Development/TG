class UsersController < ApplicationController
  before_action :require_user, only: [:show]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    end
  end

  # def role
  #   @user= User.role("editor")
  # end


  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
