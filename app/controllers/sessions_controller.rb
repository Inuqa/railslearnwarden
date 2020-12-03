class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    unless user && user.authenticate(params[:password])
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
    session[:user_id] = user.id
    redirect_to root_url, notice: "Logged in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
