require 'test_helper'

describe User do

  let(:user) { User.new }

  subject { user }

  it { must have_db_column(:provider) }
  it { must have_db_column(:uid) }
  it { must have_db_column(:name) }
  it { must have_db_column(:email) }
  it { must have_db_column(:nickname) }
  it { must have_db_column(:admin) }

  describe ".from_omniauth" do

    it "finds user if user exists" do
      auth = { "provider" => user.provider,
               "uid" => user.uid,
               "info" => { :nickname => user.name}
             }
      new_user = User.from_omniauth(auth)
      new_user.wont_be_nil
    end
  end

  describe ".create_from_omniauth" do

    it "creates a new user" do
      auth = { "provider" => user.provider,
               "uid" => user.uid,
               "info" => { :nickname => user.name}
             }
      new_user = User.create_from_omniauth(auth)
      new_user.must_be :valid?
    end
  end
end
