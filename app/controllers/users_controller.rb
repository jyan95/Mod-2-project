class UsersController < ApplicationController

  before_action :find_user, only: [:show, :new_tool]
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

  def new_tool
    # @user = User.find(params[:id])
    # @categories = Category.all
    # @tool = Tool.new
    # @user_tool = UserTool.new
  end

  def create_tool
    user = User.find(params[:id])
    if user.add_user_tool_params(user_tool_params, tool_params, category_id)
      flash[:success] = "Successfully added new tool"
      redirect_to tools_path
    else
      flash[:errors] = user.errors.full_messages
      redirect_to new_tool_path
    end
  end

  def new_login
    @user = User.new
  end

<<<<<<< HEAD
  def user_tool
    @instance = UserTool.find(params[:id])
  end
=======
  def show; end
>>>>>>> 6380033fe63b88bddd8faddad3ddef8e3ec8dc96

  private

  def find_user
    @user = User.find(params[:id])
  end

  def tool_params
    params.require(:tool).permit(:name)
  end

  def user_params
    params.require(:user).permit(:username, :password, :name, :phone)
  end

  def user_tool_params
    params.require(:user_tool).permit(:cost, :description, :image, :tool_id)
  end

  def category_id
    params.require(:user).permit(:user_tools)
  end
end
