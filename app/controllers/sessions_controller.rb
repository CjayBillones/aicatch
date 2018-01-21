class SessionsController < ApplicationController
  include ApplicationHelper

  before_action :logged_out, only: [:new, :create]
  
  def new
  
  end

  def create
    @user = User.find_by_username(params[:session][:username].downcase)

    if @user && @user.authenticate(params[:session][:password])
      login @user
      params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
      redirect_to root_path
    else
      flash.now[:error] = "Invalid username/password combination"
      render 'new'
    end
  end

  def destroy
    logout if logged_in?
    redirect_to login_path
  end

end