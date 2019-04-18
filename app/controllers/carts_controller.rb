class CartsController < ApplicationController
  before_action :get_cart, only: [:show,:checkout]

  def add
    @cart_tool = CartTool.create(cart_params)
    @cart_tool.cart.set_total
    session[:cart_id] = @cart_tool.id
    flash[:notice] = "Successfully added to cart"
    redirect_to tools_path
  end

  def remove
    cart_tool = CartTool.find_by(cart_params)
    cart_tool.destroy
    redirect_to cart_path(current_cart)
  end

  def index
    # @carts = Cart.where(user_id: 61).where(complete: true) # for testing
    user = current_user
    @carts = Cart.where(user_id: user.id, complete: true)
  end

  def show
    @instance.set_total
  end

  def checkout
    @instance.checkout
    @instance.user_tools.each{|ut| ut.in_use}
    flash[:notice] = "Your Order Has Been Placed!"
    # current_cart = Cart.new
    redirect_to carts_path
  end

  # def edit
  # end

  # def new
  # end

  private

  def cart_params
    params.require(:cart_tool).permit(:user_tool_id, :cart_id)
  end

  def get_cart
    # @instance = Cart.find_by(user_id: 61, complete: false)
    user = current_user
    @instance = Cart.find_by(user_id: user.id, complete: false)
  end
end
