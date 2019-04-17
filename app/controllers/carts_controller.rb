class CartsController < ApplicationController

  def add
    @cart = CartTool.new(cart_params)
    # @cart.save
    session[:cart_id] = @cart.id
    redirect_to tools_path
  end

  def index
    user = current_user
    @carts = Cart.where("user_id = #{user.id}")
  end

  # def edit
  # end

  # def new
  # end

  private

  def cart_params
    params.require(:cart_tool).permit(:user_tool_id, :cart_id)
  end

  def get_instance
    @instance = Cart.find(params[:id])
  end
end
