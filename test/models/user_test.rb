require 'test_helper'

describe User do

  let(:user) { User.new }

  subject { user }

  it { must have_db_column(:provider) }
  it { must have_db_column(:uid) }
  it { must have_db_column(:name) }
end
