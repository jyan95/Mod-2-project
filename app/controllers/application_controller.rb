class ApplicationController < ActionController::Base
  include SessionsHelper
<<<<<<< HEAD
  before_action :get_instance, only: [:show, :edit, :update, :destroy]
  helper_method :current_cart, :current_user, :logged_in?

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
=======

  before_action :get_instance, only: [:show, :edit, :update, :destroy, :new_tool]

 
  helper_method :current_cart
>>>>>>> e438dcc0385b27dff2c92ff15bb8c917e209a9ef

  def current_cart
    if session[:cart_id]
      CartTool.find(session[:cart_id])
    else
      CartTool.new
    end
  end

<<<<<<< HEAD
  def logged_in?
    current_user != nil
  end

  def show
=======
>>>>>>> e438dcc0385b27dff2c92ff15bb8c917e209a9ef

  def show; end

  def edit; end

  def edit

  end

  def cart
    session[:cart] ||= []
  end



  # private
  #
  # def get_instance
  #   @instance = self.class.find(params[:id])
  # end
end
