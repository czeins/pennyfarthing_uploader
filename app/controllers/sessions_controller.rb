class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to '/'
    else
        render 'new'
    end
  end

  def destroy
      session[:user_id] = nil
      redirect_to '/'
  end
end
