class UsersController < ApplicationController
  before_filter :ensure_correct_user, :only => [:show, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def destroy
    @user.destroy
    sign_out

    redirect_to root_path
  end

  private

  def ensure_correct_user
    @user = User.find(params[:id])
    redirect_to root_url unless @user == current_user
  end
end
