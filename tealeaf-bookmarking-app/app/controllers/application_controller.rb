class ApplicationController < ActionController::Base
  helper_method :current_user, :current_user_profile, :logged_in?
  protect_from_forgery
  
  def current_user
    session[:user]
  end

  def current_user_profile
    session[:user].user_profile
  end
  
  def logged_in?
    !!current_user
  end
  
  def require_user
    if !logged_in?
      redirect_to root_path, notice: "Debes ingresar para poder hacer esto."
    end
  end
end
