class SessionsController < ApplicationController

  def new
    #code
  end

  def create
    user = User.find_by(session_username)
    if user && user.authenticate(session_password)
      log_in user
      redirect_to user
    else
      # invalid
      redirect_to
    end
  end

  def destroy
    #code
  end

  private

  def session_username
    params[:session][:username].downcase
  end

  def session_password
    params[:session][:password]
  end
end
