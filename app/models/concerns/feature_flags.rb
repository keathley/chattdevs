module FeatureFlags

  def preview_features?
    admin?
  end

  def profiles_enabled?
    preview_features?
  end
end