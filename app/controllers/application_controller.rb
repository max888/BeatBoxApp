class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_user

  rescue_from CanCan::AccessDenied do |exception|
  redirect_to root_url , alert: "Sorry mate that's not allowed!"
  end

  def current_user
    begin
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    rescue ActiveRecord::RecordNotFound
      session.delete(:user_id)
    return nil
    end
  end

  def logged_in?
    !!current_user
  end
end


