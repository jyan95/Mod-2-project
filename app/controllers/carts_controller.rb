class CartsController < ApplicationController

  def create
    @cart = CartTool.new(cart_params)
    @cart.save
    session[:cart_id] = @cart.id
    redirect_to tools_path
  end
  # def index
  # end

  # def show
  # end
  #
  # def edit
  # end

  # def new
  # end

  private

  def cart_params
    params.require(:cart_tool).permit(:user_tool_id, :cart_id)
  end
end
