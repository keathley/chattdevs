module FeatureFlags

  def preview_features?
    admin?
  end
end