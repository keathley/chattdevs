class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    begin
      @user = User.from_omniauth(auth_hash)
      sign_in @user
      redirect_to root_path, :notice => "Signed in."
    rescue ActiveRecord::RecordInvalid => e
      flash[:error] = "There was an issue adding your account"
      redirect_to root_path
    end
  end

  def destroy
    sign_out
    redirect_to root_path, :notice => "Signed out."
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
