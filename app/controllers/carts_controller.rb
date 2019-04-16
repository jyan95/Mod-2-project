class CartsController < ApplicationController


  def create
    @cart = CartTool.new(cart_params)
    @cart.save
    session[:cart_id] = @cart.id
    redirect_to tools_path
  end

  def index
    @carts = Cart.where("user_id = #{current_user_id}")
  end



  def current
    # @
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
