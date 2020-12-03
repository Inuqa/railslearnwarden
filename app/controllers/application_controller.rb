class ApplicationController < ActionController::Base
  def current_user
    return nil unless session[:user_id]

    @current_user ||= User.find(session[:user_id])
    @current_user
  end
end
