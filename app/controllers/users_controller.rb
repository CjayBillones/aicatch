class UsersController < ApplicationController
  include ApplicationHelper
  
  before_action :logged_in_user
  before_action :admin_user, only: [:new, :create]
  before_action :correct_user, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(new_user_params)

    if @user.save
      flash[:success] = "Successfully created user!"
      redirect_to current_user
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

    if @user.update_attributes(edit_user_params)
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

    def new_user_params
      params.require(:user).permit(:name, :username, :password, :password_confirmation, :admin, :role)
    end

    def edit_user_params
      params.require(:user).permit(:name, :username, :password, :password_confirmation)
    end

    def admin_user
      if !current_user.admin?
        flash[:error] = "You are not authorized to access this page!"
        redirect_to current_user
      end
    end

    def correct_user
      @user = User.find(params[:id])

      if !current_user?(@user)
        flash[:error] = "You are not authorized to access this page!"
        redirect_to current_user
      end
      
    end
end
