class ToolsController < ApplicationController
  before_action :get_instance, only: [:show]
  # before_action :find_user, only: [:create, :update]

  def index
    @all = Tool.all
  end

  def show
    # @cart = Cart.create(user_id: 61) # for testing
    @user = current_user
    @cart = Cart.find_by(user_id: @user.id, complete: false)
  end

  def new
    @tool = Tool.new
  end

  def create
    tool = Tool.new(tool_params)
    tool.add_user_tool_params(user_tool_params)
    if tool.save
      flash[:success] = "Successfully added new tool"
      redirect_to tool_path(tool)
    else
      flash[:errors] = tool.errors.full_messages
      redirect_to new_tool_path
    end
  end

  def update
    tool = Tool.new(tool_params)
    if tool.save
      flash[:success] = "Successfully updated new tool"
      redirect_to tool_path(tool)
    else
      flash[:errors] = tool.errors.full_messages
      redirect_to new_tool_path
    end
  end

  def destroy
    @tool.destroy
    flash[:danger] = "Successfully removed your tool"
    redirect_to root_path
  end

  private

  def get_instance
    @instance = Tool.find(params[:id])
  end

  # def find_user
  #   @user = User.find(params[:user])
  # end

  def tool_params
    params.require(:tool).permit(:name, :category_id)
  end

  def user_tool_params
    params.require(:user_tool).permit(:cost, :description, :image)
  end
end
