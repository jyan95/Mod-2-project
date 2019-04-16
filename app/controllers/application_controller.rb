class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :get_instance, only: [:show, :edit, :update, :destroy]
  helper_method :current_cart

  def current_cart
    if session[:cart_id]
      Cart.find(session[:cart_id])
    else
      Cart.new
    end
  end

  def show

  end

  def edit

  end




  # private
  #
  # def get_instance
  #   @instance = self.class.find(params[:id])
  # end
end
