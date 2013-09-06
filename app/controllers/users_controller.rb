class UsersController < ApplicationController
  before_filter :ensure_profiles_enabled, :only => [:show]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def ensure_profiles_enabled
    not_found unless current_user.profiles_enabled?
  end
end
