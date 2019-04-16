class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :get_instance, only: [:show, :edit, :update, :destroy]

  def show

  end

  def edit

  end

  def cart
    session[:cart] ||= []
  end

  def add_to_cart(id)
    cart << id
  end



  # private
  #
  # def get_instance
  #   @instance = self.class.find(params[:id])
  # end
end
