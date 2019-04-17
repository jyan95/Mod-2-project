class CartsController < ApplicationController
  before_action :get_cart, only: [:show,:checkout]

  def add
    @cart = CartTool.new(cart_params)
    # @cart.save
    session[:cart_id] = @cart.id
    flash[:notice] = "Successfully added to cart"
    redirect_to tools_path
  end

  def index
    @carts = Cart.where(user_id: 61).where(complete: true) # for testing
    # user = current_user
    # @carts = Cart.where("user_id = #{user.id}").where(complete: true)
  end

  def show
    @instance.set_total
  end

  def checkout
    @instance.checkout
    @instance.user_tools.each{|ut| ut.in_use}
    flash[:notice] = "Your Order Has Been Placed!"
    current_cart = Cart.new
    redirect_to carts_path
  end

  def remove_item

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
    user = current_user
    @instance = Cart.where(user_id: user.id).where(complete: false)
  end
end
