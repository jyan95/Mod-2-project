module SessionsHelper

  def log_in(user) # logs in given user
    session[:user_id] = user.id
  end

  def current_user # returns current logged-in user (if any)
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !current_user.nil?
  end
end
