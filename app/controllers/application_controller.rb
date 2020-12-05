class ApplicationController < ActionController::Base
  def current_user
    return nil unless session[:user_id]

    @current_user ||= User.find(session[:user_id])
    @current_user
  end

  def require_admin
    redirect_to root_path unless @current_user.roles.include? Role.find_by(name: 'admin')
  end
end
