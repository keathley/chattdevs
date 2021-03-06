module UsersHelper

  def gravatar_url_for(user, options = { :size => 75 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  end

  def gravatar_for(user, options = { :size => 75 })
    gravatar_url = gravatar_url_for(user, options)
    image_tag(gravatar_url, :alt => user.name, class: "gravatar")
  end

  def github_profile_for(user)
    github_url = "https://github.com/#{user.nickname}"
  end
end
