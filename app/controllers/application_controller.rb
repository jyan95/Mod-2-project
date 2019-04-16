class ApplicationController < ActionController::Base
  include SessionsHelper

  before_action :get_instance, only: [:show, :edit, :update, :destroy]
  helper_method :current_user, :logged_in?

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
  # 
  # def current_user_id
  #   @current_user.id
  # end

  def current_cart
    @current_cart = Cart.where(user_id: session[:user_id]).where(complete:false)
  end

  def logged_in?
    current_user != nil
  end


  def show; end

  def edit; end

  # private
  #
  # def get_instance
  #   @instance = self.class.find(params[:id])
  # end
end
