class WelcomeController < ApplicationController
  def index
    @user = User.new
  end

  def new
    @user = User.new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
        session[:user_id] = user.user_id
        redirect_to '/'
    else
        render 'new'
    end
  end
end
