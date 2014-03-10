class User < ActiveRecord::Base

  validates :provider, :presence => true
  validates :uid, :presence => true
  validates :name, :presence => true
  validates :email, :presence => true
  validates :nickname, :presence => true

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.email = auth["info"]["email"]
      user.nickname = auth["info"]["nickname"]
    end
  end
end
