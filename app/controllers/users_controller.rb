class UsersController < ApplicationController
  # def show
  #   @user = User.find(params[:id])
  # end
  #
  # def edit
  # end
  #
  def new
    @new = User.new
  end

  def create
    user = User.create(user_params)
    if user.valid?
      redirect_to user
    else
      flash[:error] = user.errors.full_messages
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
