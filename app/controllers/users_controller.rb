class UsersController < ApplicationController
  include ApplicationHelper
  
  before_action :logged_in_user
  before_action :correct_user, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = "Successfully created user!"
      redirect_to root_path
    else
      flash.now[:error] = @user.errors.full_messages.join("<br>").html_safe
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      flash[:success] = "Succesfully updated profile!"
      redirect_to @user
    else
      flash.now[:error] = @user.errors.full_messages.join("<br>").html_safe
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
  end

  private

    def user_params
      params.require(:user).permit(:name, :username, :password, :password_confirmation, :admin, :role)
    end

    def correct_user
      @user = User.find(params[:id])

      if !current_user?(@user)
        flash[:error] = "You are not authorized to access this page!"
        redirect_to current_user
      end
      
    end
end
