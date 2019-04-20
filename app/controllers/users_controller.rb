class UsersController < ApplicationController
  before_action :find_user, only: [:destroy, :edit, :update, :show, :new_tool]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @current_cart = Cart.create(user_id: @user.id)
      session[:user_id] = @user.id
      flash[:success] = "Welcome to Toolbox, #{@user.username}!"
      redirect_to about_path
    else
      render 'new'
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
      redirect_to user
    else
      flash[:errors] = user.errors.full_messages
      redirect_to new_tool_path
    end
  end

  def new_login
    @user = User.new
  end

  def user_tool
    @usertool = UserTool.find(params[:id])
    @cart = current_cart
  end

  def user_tools
    user = current_user
    @usertools = UserTool.where(user_id: user.id)
  end

  def show; end

  def edit; end

  def update
    if @user.update(user_params)
      flash[:success] = "Your account was successfully updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def tool_params
    params.require(:tool).permit(:name)
  end

  def user_params
    params.require(:user).permit(:username, :password, :first_name, :last_name, :phone_number, :email)
  end

  def user_tool_params
    params.require(:user_tool).permit(:cost, :description, :image, :tool_id)
  end

  def category_id
    params.require(:user).permit(:user_tools)
  end




end
