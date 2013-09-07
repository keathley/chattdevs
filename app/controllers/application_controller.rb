class ApplicationController < ActionController::Base
  include NonStandardResponses
  include SessionsHelper

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  flags = FeatureFlags.public_instance_methods
  delegate *flags, :to => :current_user, :allow_nil => true
  helper_method *flags
end
