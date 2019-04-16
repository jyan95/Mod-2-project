class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to user
    else
      flash[:errors] = user.errors.full_messages
      redirect_to new_user_path
    end
  end

  private

  def get_instance
    @instance = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username,:password,:name,:phone)
  end
end
