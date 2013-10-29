class SessionController < ApplicationController
  def new
  end

  def create
    @user = User.where(:username => params[:username] ).first

    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to events_path
    else
      flash[:notice] = "Incorrect login: Try Again."
      redirect_to login_path
    end
  end

  def destroy

  end

end