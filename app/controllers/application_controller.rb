class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :get_instance, only: [:update, :destroy]
  before_action :authorized #lock down this whole app
  helper_method :current_cart

  before_action :get_instance, only: [:show, :edit, :update, :destroy]
  helper_method :current_cart, :current_user, :logged_in?

  def current_cart
    if session[:cart_id]
      CartTool.find(session[:cart_id])
    else
      CartTool.new
    end
  end

  def show; end

  def edit; end

  def cart
    session[:cart] ||= []
  end

  def current_user
    # User.find would throw an error if we cannot find the user
    User.find_by({ id: session[:user_id] })
  end

  def logged_in?
    # nil is falsey in ruby
    # a user instance is truthy
    !!current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

end
