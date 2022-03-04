class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = I18n.t(:logged_in)
      redirect_to root_path
    else
      flash.now[:alert] = I18n.t(:failed_login)
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = I18n.t(:logged_out)
    redirect_to root_path
  end
  
end 