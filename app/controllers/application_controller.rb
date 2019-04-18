class ApplicationController < ActionController::Base
  include SessionsHelper
  helper_method :current_user, :current_cart, :logged_in?

  def current_cart
    if logged_in?
      user = current_user
      @current_cart = Cart.find_by(user_id: user.id, complete: false)
    end
  end

  def show; end

  def edit; end

  def current_user
    # User.find would throw an error if we cannot find the user
    User.find_by({ id: session[:user_id] })
  end

  def logged_in?
    # nil is falsey in ruby
    # a user instance is truthy
    !!current_user
  end
  #
  # def authorized
  #   redirect_to login_path unless logged_in?
  # end

end
