class ApplicationController < ActionController::Base
  include NonStandardResponses

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  flags = FeatureFlags.public_instance_methods
  delegate *flags, :to => :current_user, :allow_nil => true

  helper_method :current_user
  helper_method *flags

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
