class SessionsController < ApplicationController

  # before_action :authorized comes from ApplicationController
  # skip_before_action :authorized, only: [:new, :login]

  def new
    @user = User.new
    render :new #looks in app/views/sessions/new.html.erb
  end

  def login
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      @current_cart = Cart.find_by(user_id: @user.id, complete: false)
      session[:user_id] = @user.id
      flash[:success] = "Logged in successfully"
      redirect_to @user
    else
      flash[:danger] = "Wrong username or password"
      redirect_to login_path and return
    end
  end

  def destroy
    # session.delete(:user_id)
    session[:user_id] = nil
    flash[:notice] = 'u logged out'
    redirect_to root_path
  end

  # def index
  #   current_user = User.find_by_id(session[:current_user_id])
  # end

  # private
  #
  def session_username
    params[:session][:username].downcase
  end

  def session_password
    params[:session][:password]
  end
end
