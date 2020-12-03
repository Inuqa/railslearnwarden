module RequireAuthenticationConcern
  extend ActiveSupport::Concern

  def authenticated?
    current_user.present?
  end

  def require_authentication
    redirect_to root_path, notice: 'You are not logged in' unless authenticated?
  end
end
