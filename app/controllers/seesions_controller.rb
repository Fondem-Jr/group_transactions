class SeesionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user
      session[:user_id] = user.id
      redirect_to admin_url, notice: 'Logged in!'
    else 
      redirect_to login_url, alert:"Invalid Username or Password"
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, alert:"Successfully logged out"
  end
end
